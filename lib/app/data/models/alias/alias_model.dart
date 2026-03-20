import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:template_project/app/domain/entities/alias/alias.dart';
import 'package:template_project/utils/hive_type_id/hive_type_id.dart';

part 'alias_model.g.dart';

@HiveType(typeId: HiveTypeId.alias)
@JsonSerializable()
class AliasModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String groupId;

  @HiveField(3)
  final String? avatar;

  AliasModel({
    required this.id,
    required this.name,
    required this.groupId,
    this.avatar,
  });

  factory AliasModel.fromJson(Map<String, dynamic> json) =>
      _$AliasModelFromJson(json);
  Map<String, dynamic> toJson() => _$AliasModelToJson(this);

  Alias toEntity() {
    return Alias(id: id, name: name, groupId: groupId, avatar: avatar);
  }
}
