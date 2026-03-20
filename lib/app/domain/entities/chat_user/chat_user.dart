import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_project/app/domain/entities/alias/alias.dart';
import 'package:template_project/utils/enums/user_enum.dart';

part 'chat_user.freezed.dart';

@freezed
abstract class ChatUser with _$ChatUser {
  const factory ChatUser({
    required String id,
    required String email,
    required String name,
    String? avatar,
    @Default(UserChatRole.member) UserChatRole userChatRole,
    Alias? alias,
  }) = _ChatUser;
}
