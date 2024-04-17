import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert_detail.freezed.dart';

part 'concert_detail.g.dart';

@freezed
class ConcertDetail with _$ConcertDetail {
  const factory ConcertDetail({
    @JsonKey(name: 'mt20id')
    required String id,
    @JsonKey(name: 'mt10id')
    required String stageId,
    @JsonKey(name: 'prfnm')
    required String name,
    @JsonKey(name: 'prfpdfrom')
    required String startAt,
    @JsonKey(name: 'prfpdto')
    required String endAt,
    @JsonKey(name: 'fcltynm')
    required String stage,
    @JsonKey(name: 'prfcast')
    @Default('') String performer,
    @JsonKey(name: 'prfruntime')
    @Default('') String runtime,
    @JsonKey(name: 'prfage')
    required String ageLimit,
    @JsonKey(name: 'pcseguidance')
    required String price,
    @JsonKey(name: 'poster')
    required String posterPath,
    @JsonKey(name: 'genrenm')
    required String genre,
    @JsonKey(name: 'prfstate')
    required String state,
    required String openrun,
  }) = _ConcertDetail;

  factory ConcertDetail.fromJson(Map<String, Object?> json) => _$ConcertDetailFromJson(json);
}