import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_project/utils/enums/message_enum.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    DateTime? createDate,
    int? senderId,
    String? text,
    @Default(MessageType.unknown) MessageType type,
    @Default(MessageStatus.unknown) MessageStatus status,
    @Default(MessagePosition.unknown) MessagePosition position,
    @Default(false) bool isMine,
  }) = _Message;
}
