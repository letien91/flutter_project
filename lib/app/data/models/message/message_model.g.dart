// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageModelAdapter extends TypeAdapter<MessageModel> {
  @override
  final int typeId = 0;

  @override
  MessageModel read(BinaryReader reader) {
    final int numOfFields = reader.readByte();
    final Map<int, dynamic> fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageModel(
      id: fields[0] as String,
      text: fields[1] as String?,
      senderId: (fields[2] as num?)?.toInt(),
      createDate: fields[3] as DateTime?,
      type: fields[4] == null ? MessageType.unknown : fields[4] as MessageType,
      isMine: fields[6] as bool,
      position: fields[7] == null
          ? MessagePosition.unknown
          : fields[7] as MessagePosition,
    );
  }

  @override
  void write(BinaryWriter writer, MessageModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.senderId)
      ..writeByte(3)
      ..write(obj.createDate)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.isMine)
      ..writeByte(7)
      ..write(obj.position);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
  id: json['id'] as String,
  text: json['text'] as String?,
  senderId: (json['sender_id'] as num?)?.toInt(),
  createDate: json['create_date'] == null
      ? null
      : DateTime.parse(json['create_date'] as String),
  type:
      $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
      MessageType.unknown,
  status:
      $enumDecodeNullable(_$MessageStatusEnumMap, json['status']) ??
      MessageStatus.unknown,
  isMine: json['is_mine'] as bool,
  position:
      $enumDecodeNullable(_$MessagePositionEnumMap, json['position']) ??
      MessagePosition.unknown,
);

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'sender_id': instance.senderId,
      'create_date': instance.createDate?.toIso8601String(),
      'type': _$MessageTypeEnumMap[instance.type]!,
      'status': _$MessageStatusEnumMap[instance.status]!,
      'is_mine': instance.isMine,
      'position': _$MessagePositionEnumMap[instance.position]!,
    };

const Map<MessageType, String> _$MessageTypeEnumMap = <MessageType, String>{
  MessageType.unknown: 'unknown',
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.video: 'video',
  MessageType.multipleMedia: 'multipleMedia',
  MessageType.notice: 'notice',
  MessageType.voice: 'voice',
  MessageType.location: 'location',
};

const Map<MessageStatus, String> _$MessageStatusEnumMap =
    <MessageStatus, String>{
      MessageStatus.unknown: 'unknown',
      MessageStatus.sending: 'sending',
      MessageStatus.sent: 'sent',
      MessageStatus.error: 'error',
    };

const Map<MessagePosition, String> _$MessagePositionEnumMap =
    <MessagePosition, String>{
      MessagePosition.unknown: 'unknown',
      MessagePosition.top: 'top',
      MessagePosition.midle: 'midle',
      MessagePosition.bottom: 'bottom',
    };
