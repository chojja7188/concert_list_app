import 'package:concert_list_app/data/data_source/concert_api.dart';
import 'package:concert_list_app/data/model/concert.dart';

abstract interface class ConcertRepository {

}

class ConcertRepositoryImpl implements ConcertRepository {
  final ConcertApi _api;

  ConcertRepositoryImpl({ConcertApi? api}) : _api = api ?? ConcertApi();

  Future<List<Concert>> getImminentOnDayConcertList() async {
    try {
      final result = await _api.getImminentOnDayConcertList();
      final concertList = result.map((e) => e.toMovieInfo()).toList();

      return concertList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}