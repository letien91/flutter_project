import 'package:freezed_annotation/freezed_annotation.dart';

part 'alias.freezed.dart';

@freezed
abstract class Alias with _$Alias {
  const factory Alias({
    required String id,
    required String name,
    required String groupId,
    required String? avatar,
  }) = _Alias;
}
