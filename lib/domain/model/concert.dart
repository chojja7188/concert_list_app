import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert.freezed.dart';

part 'concert.g.dart';

@freezed
class Concert with _$Concert {
  const factory Concert({
    required String id,
    required String name,
    required String genre,
    required String state,
    required String startAt,
    required String endAt,
    required String posterPath,
    required String stage,
    required String openrun,
  }) = _Concert;

  factory Concert.fromJson(Map<String, Object?> json) => _$ConcertFromJson(json);
}