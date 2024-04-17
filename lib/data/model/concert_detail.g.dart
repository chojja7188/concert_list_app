// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConcertDetailImpl _$$ConcertDetailImplFromJson(Map<String, dynamic> json) =>
    _$ConcertDetailImpl(
      id: json['mt20id'] as String,
      stageId: json['mt10id'] as String,
      name: json['prfnm'] as String,
      startAt: json['prfpdfrom'] as String,
      endAt: json['prfpdto'] as String,
      stage: json['fcltynm'] as String,
      performer: json['prfcast'] as String? ?? '',
      runtime: json['prfruntime'] as String,
      ageLimit: json['prfage'] as String,
      price: json['pcseguidance'] as String,
      posterPath: json['poster'] as String,
      genre: json['genrenm'] as String,
      state: json['prfstate'] as String,
      openrun: json['openrun'] as String,
    );

Map<String, dynamic> _$$ConcertDetailImplToJson(_$ConcertDetailImpl instance) =>
    <String, dynamic>{
      'mt20id': instance.id,
      'mt10id': instance.stageId,
      'prfnm': instance.name,
      'prfpdfrom': instance.startAt,
      'prfpdto': instance.endAt,
      'fcltynm': instance.stage,
      'prfcast': instance.performer,
      'prfruntime': instance.runtime,
      'prfage': instance.ageLimit,
      'pcseguidance': instance.price,
      'poster': instance.posterPath,
      'genrenm': instance.genre,
      'prfstate': instance.state,
      'openrun': instance.openrun,
    };
