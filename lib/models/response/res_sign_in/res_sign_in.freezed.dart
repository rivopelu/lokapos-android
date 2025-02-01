// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResSignIn _$ResSignInFromJson(Map<String, dynamic> json) {
  return _ResSignIn.fromJson(json);
}

/// @nodoc
mixin _$ResSignIn {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  /// Serializes this ResSignIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResSignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResSignInCopyWith<ResSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResSignInCopyWith<$Res> {
  factory $ResSignInCopyWith(ResSignIn value, $Res Function(ResSignIn) then) =
      _$ResSignInCopyWithImpl<$Res, ResSignIn>;
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$ResSignInCopyWithImpl<$Res, $Val extends ResSignIn>
    implements $ResSignInCopyWith<$Res> {
  _$ResSignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResSignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResSignInImplCopyWith<$Res>
    implements $ResSignInCopyWith<$Res> {
  factory _$$ResSignInImplCopyWith(
          _$ResSignInImpl value, $Res Function(_$ResSignInImpl) then) =
      __$$ResSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$$ResSignInImplCopyWithImpl<$Res>
    extends _$ResSignInCopyWithImpl<$Res, _$ResSignInImpl>
    implements _$$ResSignInImplCopyWith<$Res> {
  __$$ResSignInImplCopyWithImpl(
      _$ResSignInImpl _value, $Res Function(_$ResSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResSignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$ResSignInImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResSignInImpl implements _ResSignIn {
  const _$ResSignInImpl(
      {@JsonKey(name: 'access_token') required this.accessToken});

  factory _$ResSignInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResSignInImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'ResSignIn(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResSignInImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  /// Create a copy of ResSignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResSignInImplCopyWith<_$ResSignInImpl> get copyWith =>
      __$$ResSignInImplCopyWithImpl<_$ResSignInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResSignInImplToJson(
      this,
    );
  }
}

abstract class _ResSignIn implements ResSignIn {
  const factory _ResSignIn(
          {@JsonKey(name: 'access_token') required final String accessToken}) =
      _$ResSignInImpl;

  factory _ResSignIn.fromJson(Map<String, dynamic> json) =
      _$ResSignInImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;

  /// Create a copy of ResSignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResSignInImplCopyWith<_$ResSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
