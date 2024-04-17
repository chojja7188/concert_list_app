// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConcertImpl _$$ConcertImplFromJson(Map<String, dynamic> json) =>
    _$ConcertImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      genre: json['genre'] as String,
      state: json['state'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
      posterPath: json['posterPath'] as String,
      stage: json['stage'] as String,
      openrun: json['openrun'] as String,
    );

Map<String, dynamic> _$$ConcertImplToJson(_$ConcertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genre': instance.genre,
      'state': instance.state,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'posterPath': instance.posterPath,
      'stage': instance.stage,
      'openrun': instance.openrun,
    };
