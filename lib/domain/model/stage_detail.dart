import 'package:freezed_annotation/freezed_annotation.dart';

part 'stage_detail.freezed.dart';

part 'stage_detail.g.dart';

@freezed
class StageDetail with _$StageDetail {
  const factory StageDetail({
    required String id,
    required String address
  }) = _StageDetail;

  factory StageDetail.fromJson(Map<String, Object?> json) => _$StageDetailFromJson(json);
}