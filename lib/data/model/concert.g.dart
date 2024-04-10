// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConcertImpl _$$ConcertImplFromJson(Map<String, dynamic> json) =>
    _$ConcertImpl(
      id: json['mt20id'] as String,
      name: json['prfnm'] as String,
      genre: json['genrenm'] as String,
      state: json['prfstate'] as String,
      startAt: json['prfpdform'] as String,
      endAt: json['prfpdto'] as String,
      posterPath: json['poster'] as String,
      stage: json['fcltynm'] as String,
      openrun: json['openrun'] as String,
      area: json['area'] as String,
    );

Map<String, dynamic> _$$ConcertImplToJson(_$ConcertImpl instance) =>
    <String, dynamic>{
      'mt20id': instance.id,
      'prfnm': instance.name,
      'genrenm': instance.genre,
      'prfstate': instance.state,
      'prfpdform': instance.startAt,
      'prfpdto': instance.endAt,
      'poster': instance.posterPath,
      'fcltynm': instance.stage,
      'openrun': instance.openrun,
      'area': instance.area,
    };
