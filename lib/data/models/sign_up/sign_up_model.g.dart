// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      json['phone'] as String,
      json['password'] as String,
      json['first-name'] as String,
      json['last-name'] as String,
      json['born-date'] as String,
      json['gender'] as int,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'first-name': instance.firstName,
      'last-name': instance.lastName,
      'born-date': instance.bornDate,
      'gender': instance.gender,
    };
