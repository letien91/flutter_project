import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:template_project/app/domain/entities/user/user.dart';
import 'package:template_project/utils/hive_type_id/hive_type_id.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveTypeId.user)
@JsonSerializable()
class UserModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final String? avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity() {
    return User(id: id, email: email, name: name, avatar: avatar);
  }
}
