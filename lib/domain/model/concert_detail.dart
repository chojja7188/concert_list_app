import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'concert_detail.freezed.dart';

part 'concert_detail.g.dart';

@freezed
class ConcertDetail with _$ConcertDetail {
  @HiveType(typeId: 1)
  const factory ConcertDetail({
    @HiveField(1)
    required String id,
    @HiveField(2)
    required String stageId,
    @HiveField(3)
    required String name,
    @HiveField(4)
    required String startAt,
    @HiveField(5)
    required String endAt,
    @HiveField(6)
    required String stage,
    @HiveField(7)
    required String performer,
    @HiveField(8)
    required String runtime,
    @HiveField(9)
    required String ageLimit,
    @HiveField(10)
    required String price,
    @HiveField(11)
    required String posterPath,
    @HiveField(12)
    required String genre,
    @HiveField(13)
    required String state,
    @HiveField(14)
    required String openrun,
    @HiveField(15)
    required dynamic infoImages,
    @HiveField(16)
    required String time
  }) = _ConcertDetail;

  factory ConcertDetail.fromJson(Map<String, Object?> json) => _$ConcertDetailFromJson(json);
}