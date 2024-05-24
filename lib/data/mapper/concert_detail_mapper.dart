import 'package:concert_list_app/data/dto/concert_detail_dto.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';

extension ToConcertDetail on ConcertDetailDto {
  ConcertDetail toConcertDetail() {
    return ConcertDetail(
        id: mt20id ?? '',
        stageId: mt10id ?? '',
        name: prfnm ?? '',
        startAt: prfpdfrom ?? '',
        endAt: prfpdto ?? '',
        stage: fcltynm ?? '',
        performer: prfcast ?? '',
        runtime: prfruntime ?? '',
        ageLimit: prfage ?? '',
        price: pcseguidance ?? '',
        posterPath: poster ?? '',
        genre: genrenm ?? '',
        state: prfstate ?? '',
        openrun: openrun ?? '',
        infoImages: checkInfoImages(styurls),
        time: dtguidance ?? ''
    );
  }
}

dynamic checkInfoImages(dynamic infoImages) {
  if(infoImages is String) {
    return infoImages.toString() ?? '';
  } else if(infoImages is List) {
    return infoImages.map((e) => e.toString()).toList();
  } else {
    return '';
  }
}