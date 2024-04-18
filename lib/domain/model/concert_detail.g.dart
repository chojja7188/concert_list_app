// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConcertDetailImpl _$$ConcertDetailImplFromJson(Map<String, dynamic> json) =>
    _$ConcertDetailImpl(
      id: json['id'] as String,
      stageId: json['stageId'] as String,
      name: json['name'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
      stage: json['stage'] as String,
      performer: json['performer'] as String,
      runtime: json['runtime'] as String,
      ageLimit: json['ageLimit'] as String,
      price: json['price'] as String,
      posterPath: json['posterPath'] as String,
      genre: json['genre'] as String,
      state: json['state'] as String,
      openrun: json['openrun'] as String,
      infoImages: json['infoImages'],
      time: json['time'] as String,
    );

Map<String, dynamic> _$$ConcertDetailImplToJson(_$ConcertDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stageId': instance.stageId,
      'name': instance.name,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'stage': instance.stage,
      'performer': instance.performer,
      'runtime': instance.runtime,
      'ageLimit': instance.ageLimit,
      'price': instance.price,
      'posterPath': instance.posterPath,
      'genre': instance.genre,
      'state': instance.state,
      'openrun': instance.openrun,
      'infoImages': instance.infoImages,
      'time': instance.time,
    };
