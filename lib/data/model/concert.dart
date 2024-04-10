import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert.freezed.dart';

part 'concert.g.dart';

@freezed
class Concert with _$Concert {
  const factory Concert({
    @JsonKey(name: 'mt20id')
    required String id,
    @JsonKey(name: 'prfnm')
    required String name,
    @JsonKey(name: 'genrenm')
    required String genre,
    @JsonKey(name: 'prfstate')
    required String state,
    @JsonKey(name: 'prfpdfrom')
    required String startAt,
    @JsonKey(name: 'prfpdto')
    required String endAt,
    @JsonKey(name: 'poster')
    required String posterPath,
    @JsonKey(name: 'fcltynm')
    required String stage,
    required String openrun,
  }) = _Concert;

  factory Concert.fromJson(Map<String, Object?> json) => _$ConcertFromJson(json);
}