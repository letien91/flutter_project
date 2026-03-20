import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:template_project/app/domain/entities/message/message.dart';
import 'package:template_project/utils/enums/enum_converter.dart';
import 'package:template_project/utils/enums/message_enum.dart';
import 'package:template_project/utils/hive_type_id/hive_type_id.dart';

part 'message_model.g.dart';

@HiveType(typeId: HiveTypeId.message)
@JsonSerializable()
class MessageModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String? text;

  @HiveField(2)
  @JsonKey(name: 'sender_id')
  final int? senderId;

  @HiveField(3)
  @JsonKey(name: 'create_date')
  final DateTime? createDate;

  @HiveField(4)
  @EnumConverter(MessageType.values)
  final MessageType type;

  @EnumConverter(MessageStatus.values)
  final MessageStatus status;

  @HiveField(6)
  @JsonKey(name: 'is_mine')
  final bool isMine;

  @HiveField(7)
  @EnumConverter(MessagePosition.values)
  final MessagePosition position;

  MessageModel({
    required this.id,
    this.text,
    this.senderId,
    this.createDate,
    this.type = MessageType.unknown,
    this.status = MessageStatus.unknown,
    required this.isMine,
    this.position = MessagePosition.unknown,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  Message toEntity() {
    return Message(
      id: id,
      text: text,
      senderId: senderId,
      createDate: createDate,
      type: type,
      status: status,
      position: position,
      isMine: isMine,
    );
  }
}
