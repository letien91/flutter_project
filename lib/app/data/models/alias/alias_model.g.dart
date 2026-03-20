// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alias_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AliasModelAdapter extends TypeAdapter<AliasModel> {
  @override
  final int typeId = 2;

  @override
  AliasModel read(BinaryReader reader) {
    final int numOfFields = reader.readByte();
    final Map<int, dynamic> fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AliasModel(
      id: fields[0] as String,
      name: fields[1] as String,
      groupId: fields[2] as String,
      avatar: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AliasModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.groupId)
      ..writeByte(3)
      ..write(obj.avatar);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AliasModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AliasModel _$AliasModelFromJson(Map<String, dynamic> json) => AliasModel(
  id: json['id'] as String,
  name: json['name'] as String,
  groupId: json['groupId'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$AliasModelToJson(AliasModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'groupId': instance.groupId,
      'avatar': instance.avatar,
    };
