import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert_detail.freezed.dart';

part 'concert_detail.g.dart';

@freezed
class ConcertDetail with _$ConcertDetail {
  const factory ConcertDetail({
    required String id,
    required String stageId,
    required String name,
    required String startAt,
    required String endAt,
    required String stage,
    required String performer,
    required String runtime,
    required String ageLimit,
    required String price,
    required String posterPath,
    required String genre,
    required String state,
    required String openrun,
    required dynamic infoImages,
    required String time
  }) = _ConcertDetail;

  factory ConcertDetail.fromJson(Map<String, Object?> json) => _$ConcertDetailFromJson(json);
}