import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';

abstract interface class ConcertRepository {
  Future<List<Concert>> getTodayConcertList();
  Future<List<Concert>> getImminentOnDayConcertList();
  Future<List<Concert>> getSearchConcertList({required String query, required int page});

  Future<ConcertDetail> getConcertDetail({required String id});

  Future<StageDetail> getStageDetail({required String id});
}