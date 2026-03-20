// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatUserModelAdapter extends TypeAdapter<ChatUserModel> {
  @override
  final int typeId = 3;

  @override
  ChatUserModel read(BinaryReader reader) {
    final int numOfFields = reader.readByte();
    final Map<int, dynamic> fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatUserModel(
      id: fields[0] as String,
      email: fields[1] as String,
      name: fields[2] as String,
      avatar: fields[3] as String?,
      userChatRole: fields[4] == null
          ? UserChatRole.member
          : fields[4] as UserChatRole,
      alias: fields[5] as AliasModel?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatUserModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.avatar)
      ..writeByte(4)
      ..write(obj.userChatRole)
      ..writeByte(5)
      ..write(obj.alias);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatUserModel _$ChatUserModelFromJson(Map<String, dynamic> json) =>
    ChatUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      userChatRole:
          $enumDecodeNullable(_$UserChatRoleEnumMap, json['userChatRole']) ??
          UserChatRole.member,
      alias: json['alias'] == null
          ? null
          : AliasModel.fromJson(json['alias'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatUserModelToJson(ChatUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'userChatRole': _$UserChatRoleEnumMap[instance.userChatRole]!,
      'alias': instance.alias,
    };

const Map<UserChatRole, String> _$UserChatRoleEnumMap = <UserChatRole, String>{
  UserChatRole.member: 'member',
  UserChatRole.admin: 'admin',
};
