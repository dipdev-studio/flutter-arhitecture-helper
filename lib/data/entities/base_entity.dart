abstract class BaseEntity {
  List<_Property> _properties = [];

  void addProperty(String name, dynamic property) {
    _properties.add(_Property(name, property, property.runtimeType));
  }

  void cleanProperties() => _properties = [];

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    for (_Property property in _properties) {
      map.addAll(
          {property.name: _getValueByType(property.type, property.value)});
    }
    return map;
  }

  void fromMap(Map<String, dynamic> map) {
    Map<String, dynamic> map = Map();
    for (_Property property in _properties) {
      String propertyName = property.name;
      if (map.containsKey(propertyName)) {
        var value = map[propertyName];
        var propertyType = property.type;
        if (propertyType == value.runtimeType) {
          property.value = _getValueByType(propertyType, value);
        } else {
          throw UnsupportedError(
              "The parameter with the name '$propertyName' has the '$value.runtimeType.toString()' data type, but it must have the following data type - '$propertyType.toString()'.");
        }
      }
    }
  }

  dynamic _getValue(dynamic value) {
    return _getValueByType(value.runtimeType, _getValueByType);
  }

  dynamic _getValueByType(Type type, dynamic value) {
    String valueString = value.toString();
    if (type is String)
      return valueString;
    else if (type is int)
      return int.parse(valueString);
    else if (type is bool)
      return valueString.toLowerCase() == 'true' || valueString == '1';
    else if (type is List)
      //return List;
      throw UnsupportedError("This data type is currently not supported!");
    else if (type is Map)
      //return Map;
      throw UnsupportedError("This data type is currently not supported!");
    else if (type is BaseEntity) {
    } else {
      throw UnsupportedError(
          "This data type is not one of the basic types or is not inherited from the BaseEntity!");
    }
  }
}

class _Property {
  final String name;
  final Type type;
  dynamic value;

  _Property(this.name, this.type, this.value);
}
