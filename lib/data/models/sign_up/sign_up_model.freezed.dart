// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpModel {
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'first-name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last-name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'born-date')
  String? get bornDate => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) then) =
      _$SignUpModelCopyWithImpl<$Res, SignUpModel>;
  @useResult
  $Res call(
      {String? phone,
      String? password,
      @JsonKey(name: 'first-name') String? firstName,
      @JsonKey(name: 'last-name') String? lastName,
      @JsonKey(name: 'born-date') String? bornDate,
      int? gender});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res, $Val extends SignUpModel>
    implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? bornDate = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpModelImplCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$$SignUpModelImplCopyWith(
          _$SignUpModelImpl value, $Res Function(_$SignUpModelImpl) then) =
      __$$SignUpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phone,
      String? password,
      @JsonKey(name: 'first-name') String? firstName,
      @JsonKey(name: 'last-name') String? lastName,
      @JsonKey(name: 'born-date') String? bornDate,
      int? gender});
}

/// @nodoc
class __$$SignUpModelImplCopyWithImpl<$Res>
    extends _$SignUpModelCopyWithImpl<$Res, _$SignUpModelImpl>
    implements _$$SignUpModelImplCopyWith<$Res> {
  __$$SignUpModelImplCopyWithImpl(
      _$SignUpModelImpl _value, $Res Function(_$SignUpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? bornDate = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$SignUpModelImpl(
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SignUpModelImpl implements _SignUpModel {
  const _$SignUpModelImpl(
      this.phone,
      this.password,
      @JsonKey(name: 'first-name') this.firstName,
      @JsonKey(name: 'last-name') this.lastName,
      @JsonKey(name: 'born-date') this.bornDate,
      this.gender);

  @override
  final String? phone;
  @override
  final String? password;
  @override
  @JsonKey(name: 'first-name')
  final String? firstName;
  @override
  @JsonKey(name: 'last-name')
  final String? lastName;
  @override
  @JsonKey(name: 'born-date')
  final String? bornDate;
  @override
  final int? gender;

  @override
  String toString() {
    return 'SignUpModel(phone: $phone, password: $password, firstName: $firstName, lastName: $lastName, bornDate: $bornDate, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phone, password, firstName, lastName, bornDate, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpModelImplCopyWith<_$SignUpModelImpl> get copyWith =>
      __$$SignUpModelImplCopyWithImpl<_$SignUpModelImpl>(this, _$identity);
}

abstract class _SignUpModel implements SignUpModel {
  const factory _SignUpModel(
      final String? phone,
      final String? password,
      @JsonKey(name: 'first-name') final String? firstName,
      @JsonKey(name: 'last-name') final String? lastName,
      @JsonKey(name: 'born-date') final String? bornDate,
      final int? gender) = _$SignUpModelImpl;

  @override
  String? get phone;
  @override
  String? get password;
  @override
  @JsonKey(name: 'first-name')
  String? get firstName;
  @override
  @JsonKey(name: 'last-name')
  String? get lastName;
  @override
  @JsonKey(name: 'born-date')
  String? get bornDate;
  @override
  int? get gender;
  @override
  @JsonKey(ignore: true)
  _$$SignUpModelImplCopyWith<_$SignUpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
