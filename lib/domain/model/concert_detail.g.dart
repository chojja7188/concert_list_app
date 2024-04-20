// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConcertDetailImplAdapter extends TypeAdapter<_$ConcertDetailImpl> {
  @override
  final int typeId = 1;

  @override
  _$ConcertDetailImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ConcertDetailImpl(
      id: fields[1] as String,
      stageId: fields[2] as String,
      name: fields[3] as String,
      startAt: fields[4] as String,
      endAt: fields[5] as String,
      stage: fields[6] as String,
      performer: fields[7] as String,
      runtime: fields[8] as String,
      ageLimit: fields[9] as String,
      price: fields[10] as String,
      posterPath: fields[11] as String,
      genre: fields[12] as String,
      state: fields[13] as String,
      openrun: fields[14] as String,
      infoImages: fields[15] as dynamic,
      time: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ConcertDetailImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.stageId)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.startAt)
      ..writeByte(5)
      ..write(obj.endAt)
      ..writeByte(6)
      ..write(obj.stage)
      ..writeByte(7)
      ..write(obj.performer)
      ..writeByte(8)
      ..write(obj.runtime)
      ..writeByte(9)
      ..write(obj.ageLimit)
      ..writeByte(10)
      ..write(obj.price)
      ..writeByte(11)
      ..write(obj.posterPath)
      ..writeByte(12)
      ..write(obj.genre)
      ..writeByte(13)
      ..write(obj.state)
      ..writeByte(14)
      ..write(obj.openrun)
      ..writeByte(15)
      ..write(obj.infoImages)
      ..writeByte(16)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcertDetailImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
