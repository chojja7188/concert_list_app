import 'package:concert_list_app/data/dto/concert_dto.dart';
import 'package:concert_list_app/domain/model/concert.dart';

extension ToConcert on ConcertDto {
  Concert toConcert() {
    return Concert(
        id: mt20id ?? '',
        name: prfnm ?? '',
        genre: genrenm ?? '',
        state: prfstate ?? '',
        startAt: prfpdfrom ?? '',
        endAt: prfpdto ?? '',
        posterPath: poster ?? '',
        stage: fcltynm ?? '',
        openrun: openrun ?? ''
    );
  }
}