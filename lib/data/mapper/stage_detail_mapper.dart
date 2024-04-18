import 'package:concert_list_app/data/dto/stage_detail_dto.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';

extension ToStageDetail on StageDetailDto {
  StageDetail toStageDetail() {
    return StageDetail(
        id: mt10id ?? '',
        address: adres ?? ''
    );
  }
}