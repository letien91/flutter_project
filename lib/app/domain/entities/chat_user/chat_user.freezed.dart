// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatUser {

 String get id; String get email; String get name; String? get avatar; UserChatRole get userChatRole; Alias? get alias;
/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatUserCopyWith<ChatUser> get copyWith => _$ChatUserCopyWithImpl<ChatUser>(this as ChatUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.userChatRole, userChatRole) || other.userChatRole == userChatRole)&&(identical(other.alias, alias) || other.alias == alias));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,name,avatar,userChatRole,alias);

@override
String toString() {
  return 'ChatUser(id: $id, email: $email, name: $name, avatar: $avatar, userChatRole: $userChatRole, alias: $alias)';
}


}

/// @nodoc
abstract mixin class $ChatUserCopyWith<$Res>  {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) _then) = _$ChatUserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String name, String? avatar, UserChatRole userChatRole, Alias? alias
});


$AliasCopyWith<$Res>? get alias;

}
/// @nodoc
class _$ChatUserCopyWithImpl<$Res>
    implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._self, this._then);

  final ChatUser _self;
  final $Res Function(ChatUser) _then;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? avatar = freezed,Object? userChatRole = null,Object? alias = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,userChatRole: null == userChatRole ? _self.userChatRole : userChatRole // ignore: cast_nullable_to_non_nullable
as UserChatRole,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as Alias?,
  ));
}
/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AliasCopyWith<$Res>? get alias {
    if (_self.alias == null) {
    return null;
  }

  return $AliasCopyWith<$Res>(_self.alias!, (value) {
    return _then(_self.copyWith(alias: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatUser].
extension ChatUserPatterns on ChatUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatUser value)  $default,){
final _that = this;
switch (_that) {
case _ChatUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatUser value)?  $default,){
final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String name,  String? avatar,  UserChatRole userChatRole,  Alias? alias)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.avatar,_that.userChatRole,_that.alias);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String name,  String? avatar,  UserChatRole userChatRole,  Alias? alias)  $default,) {final _that = this;
switch (_that) {
case _ChatUser():
return $default(_that.id,_that.email,_that.name,_that.avatar,_that.userChatRole,_that.alias);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String name,  String? avatar,  UserChatRole userChatRole,  Alias? alias)?  $default,) {final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.avatar,_that.userChatRole,_that.alias);case _:
  return null;

}
}

}

/// @nodoc


class _ChatUser implements ChatUser {
  const _ChatUser({required this.id, required this.email, required this.name, this.avatar, this.userChatRole = UserChatRole.member, this.alias});
  

@override final  String id;
@override final  String email;
@override final  String name;
@override final  String? avatar;
@override@JsonKey() final  UserChatRole userChatRole;
@override final  Alias? alias;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatUserCopyWith<_ChatUser> get copyWith => __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.userChatRole, userChatRole) || other.userChatRole == userChatRole)&&(identical(other.alias, alias) || other.alias == alias));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,name,avatar,userChatRole,alias);

@override
String toString() {
  return 'ChatUser(id: $id, email: $email, name: $name, avatar: $avatar, userChatRole: $userChatRole, alias: $alias)';
}


}

/// @nodoc
abstract mixin class _$ChatUserCopyWith<$Res> implements $ChatUserCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) _then) = __$ChatUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String name, String? avatar, UserChatRole userChatRole, Alias? alias
});


@override $AliasCopyWith<$Res>? get alias;

}
/// @nodoc
class __$ChatUserCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(this._self, this._then);

  final _ChatUser _self;
  final $Res Function(_ChatUser) _then;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = null,Object? avatar = freezed,Object? userChatRole = null,Object? alias = freezed,}) {
  return _then(_ChatUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,userChatRole: null == userChatRole ? _self.userChatRole : userChatRole // ignore: cast_nullable_to_non_nullable
as UserChatRole,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as Alias?,
  ));
}

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AliasCopyWith<$Res>? get alias {
    if (_self.alias == null) {
    return null;
  }

  return $AliasCopyWith<$Res>(_self.alias!, (value) {
    return _then(_self.copyWith(alias: value));
  });
}
}

// dart format on
