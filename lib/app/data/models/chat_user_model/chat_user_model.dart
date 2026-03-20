import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:template_project/app/data/models/alias/alias_model.dart';
import 'package:template_project/app/domain/entities/chat_user/chat_user.dart';
import 'package:template_project/utils/enums/enum_converter.dart';
import 'package:template_project/utils/enums/user_enum.dart';
import 'package:template_project/utils/hive_type_id/hive_type_id.dart';

part 'chat_user_model.g.dart';

@HiveType(typeId: HiveTypeId.chatUser)
@JsonSerializable()
class ChatUserModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final String? avatar;

  @HiveField(4)
  @EnumConverter(UserChatRole.values)
  final UserChatRole userChatRole;

  @HiveField(5)
  final AliasModel? alias;

  ChatUserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.avatar,
    this.userChatRole = UserChatRole.member,
    this.alias,
  });

  factory ChatUserModel.fromJson(Map<String, dynamic> json) =>
      _$ChatUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChatUserModelToJson(this);

  ChatUser toEntity() {
    return ChatUser(
      id: id,
      email: email,
      name: name,
      avatar: avatar,
      userChatRole: userChatRole,
      alias: alias?.toEntity(),
    );
  }
}
