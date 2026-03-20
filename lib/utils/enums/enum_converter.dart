import 'package:json_annotation/json_annotation.dart';

class EnumConverter<T extends Enum> implements JsonConverter<T, int> {
  final List<T> values;

  const EnumConverter(this.values);

  @override
  T fromJson(int json) {
    return values[json];
  }

  @override
  int toJson(T object) {
    return object.index;
  }
}
