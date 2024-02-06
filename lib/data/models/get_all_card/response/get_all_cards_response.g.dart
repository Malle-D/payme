// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllCardsResponseImpl _$$GetAllCardsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllCardsResponseImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['amount'] as int?,
      json['owner'] as String?,
      json['pan'] as String?,
      json['expired-year'] as int?,
      json['expired-month'] as int?,
      json['theme-type'] as int?,
      json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$GetAllCardsResponseImplToJson(
        _$GetAllCardsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'owner': instance.owner,
      'pan': instance.pan,
      'expired-year': instance.expiredYear,
      'expired-month': instance.expiredMonth,
      'theme-type': instance.themeType,
      'isVisible': instance.isVisible,
    };
