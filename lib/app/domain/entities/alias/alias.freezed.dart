// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alias.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Alias {

 String get id; String get name; String get groupId; String? get avatar;
/// Create a copy of Alias
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AliasCopyWith<Alias> get copyWith => _$AliasCopyWithImpl<Alias>(this as Alias, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alias&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,avatar);

@override
String toString() {
  return 'Alias(id: $id, name: $name, groupId: $groupId, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $AliasCopyWith<$Res>  {
  factory $AliasCopyWith(Alias value, $Res Function(Alias) _then) = _$AliasCopyWithImpl;
@useResult
$Res call({
 String id, String name, String groupId, String? avatar
});




}
/// @nodoc
class _$AliasCopyWithImpl<$Res>
    implements $AliasCopyWith<$Res> {
  _$AliasCopyWithImpl(this._self, this._then);

  final Alias _self;
  final $Res Function(Alias) _then;

/// Create a copy of Alias
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? groupId = null,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Alias].
extension AliasPatterns on Alias {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Alias value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Alias() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Alias value)  $default,){
final _that = this;
switch (_that) {
case _Alias():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Alias value)?  $default,){
final _that = this;
switch (_that) {
case _Alias() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String groupId,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Alias() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.avatar);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String groupId,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _Alias():
return $default(_that.id,_that.name,_that.groupId,_that.avatar);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String groupId,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _Alias() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _Alias implements Alias {
  const _Alias({required this.id, required this.name, required this.groupId, required this.avatar});
  

@override final  String id;
@override final  String name;
@override final  String groupId;
@override final  String? avatar;

/// Create a copy of Alias
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AliasCopyWith<_Alias> get copyWith => __$AliasCopyWithImpl<_Alias>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alias&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,avatar);

@override
String toString() {
  return 'Alias(id: $id, name: $name, groupId: $groupId, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$AliasCopyWith<$Res> implements $AliasCopyWith<$Res> {
  factory _$AliasCopyWith(_Alias value, $Res Function(_Alias) _then) = __$AliasCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String groupId, String? avatar
});




}
/// @nodoc
class __$AliasCopyWithImpl<$Res>
    implements _$AliasCopyWith<$Res> {
  __$AliasCopyWithImpl(this._self, this._then);

  final _Alias _self;
  final $Res Function(_Alias) _then;

/// Create a copy of Alias
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? groupId = null,Object? avatar = freezed,}) {
  return _then(_Alias(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
