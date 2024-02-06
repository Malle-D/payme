// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmCodeModel _$ConfirmCodeModelFromJson(Map<String, dynamic> json) {
  return _ConfirmCodeModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmCodeModel {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmCodeModelCopyWith<ConfirmCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeModelCopyWith<$Res> {
  factory $ConfirmCodeModelCopyWith(
          ConfirmCodeModel value, $Res Function(ConfirmCodeModel) then) =
      _$ConfirmCodeModelCopyWithImpl<$Res, ConfirmCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'code') String code});
}

/// @nodoc
class _$ConfirmCodeModelCopyWithImpl<$Res, $Val extends ConfirmCodeModel>
    implements $ConfirmCodeModelCopyWith<$Res> {
  _$ConfirmCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmCodeModelImplCopyWith<$Res>
    implements $ConfirmCodeModelCopyWith<$Res> {
  factory _$$ConfirmCodeModelImplCopyWith(_$ConfirmCodeModelImpl value,
          $Res Function(_$ConfirmCodeModelImpl) then) =
      __$$ConfirmCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'code') String code});
}

/// @nodoc
class __$$ConfirmCodeModelImplCopyWithImpl<$Res>
    extends _$ConfirmCodeModelCopyWithImpl<$Res, _$ConfirmCodeModelImpl>
    implements _$$ConfirmCodeModelImplCopyWith<$Res> {
  __$$ConfirmCodeModelImplCopyWithImpl(_$ConfirmCodeModelImpl _value,
      $Res Function(_$ConfirmCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmCodeModelImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConfirmCodeModelImpl implements _ConfirmCodeModel {
  const _$ConfirmCodeModelImpl(
      @JsonKey(name: 'token') this.token, @JsonKey(name: 'code') this.code);

  factory _$ConfirmCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmCodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'code')
  final String code;

  @override
  String toString() {
    return 'ConfirmCodeModel(token: $token, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeModelImplCopyWith<_$ConfirmCodeModelImpl> get copyWith =>
      __$$ConfirmCodeModelImplCopyWithImpl<_$ConfirmCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmCodeModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmCodeModel implements ConfirmCodeModel {
  const factory _ConfirmCodeModel(@JsonKey(name: 'token') final String token,
      @JsonKey(name: 'code') final String code) = _$ConfirmCodeModelImpl;

  factory _ConfirmCodeModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmCodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmCodeModelImplCopyWith<_$ConfirmCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
