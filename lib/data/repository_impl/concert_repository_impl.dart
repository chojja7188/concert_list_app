import 'package:concert_list_app/data/data_source/concert_api.dart';
import 'package:concert_list_app/data/dto/concert_dto.dart';
import 'package:concert_list_app/data/mapper/concert_detail_mapper.dart';
import 'package:concert_list_app/data/mapper/concert_mapper.dart';
import 'package:concert_list_app/data/mapper/stage_detail_mapper.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:intl/intl.dart';

class ConcertRepositoryImpl implements ConcertRepository {
  final ConcertApi _api;

  ConcertRepositoryImpl({ConcertApi? api}) : _api = api ?? ConcertApi();

  @override
  Future<List<Concert>> getNewConcertList() async {
    final String nowDate = DateFormat('yyyyMMdd').format(DateTime.now());
    try {
      final dtoList = await _api.getNewConcertList(nowDate, '29991231');

      final concertList = dtoList.map((e) => e.toConcert()).toList();

      return concertList;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return [];
    }
  }

  @override
  Future<List<Concert>> getTodayConcertList() async {
    final String nowDate = DateFormat('yyyyMMdd').format(DateTime.now());
    try {
      final dtoList = await _api.getTodayConcertList(nowDate);

      final concertList = dtoList.map((e) => e.toConcert()).toList();

      return concertList;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return [];
    }
  }

  @override
  Future<List<Concert>> getImminentOnDayConcertList() async {
    final DateTime nowDate = DateTime.now();
    final String startDate = DateFormat('yyyyMMdd').format(
        DateTime(nowDate.year, nowDate.month, nowDate.day));
    final String endDate = DateFormat('yyyyMMdd').format(
        DateTime(nowDate.year, nowDate.month, nowDate.day + 3));
    try {
      final dtoList = await _api.getImminentOnDayConcertList(
          startDate, endDate);

      final concertList = dtoList.map((e) => e.toConcert()).toList();

      return concertList;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return [];
    }
  }

  @override
  Future<List<Concert>> getSearchConcertList(
      {required String query, required int page}) async {
    final DateTime nowDate = DateTime.now();
    final String startDate = DateFormat('yyyyMMdd').format(
        DateTime(nowDate.year - 5, nowDate.month, nowDate.day));
    final String endDate = DateFormat('yyyyMMdd').format(
        DateTime(nowDate.year + 1, nowDate.month, nowDate.day));

    try {
      final result = await _api.getSearchConcertList(
          query, page, startDate, endDate);

      if (result['dbs'] == null) {
        ToastService().showToast('데이터가 없습니다');
        return [];
      }
      final List jsonList = result['dbs']['db'];
      final List<ConcertDto> dtoList = jsonList.map((e) => ConcertDto.fromJson(e)).toList();

      final concertList = dtoList.map((e) => e.toConcert()).toList();

      return concertList;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return [];
    }
  }

  @override
  Future<ConcertDetail> getConcertDetail({required String id}) async {
    try {
      final dto = await _api.getConcertDetail(id: id);

      final concertDetail = dto.toConcertDetail();

      return concertDetail;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return const ConcertDetail(
        id: '',
        stageId: '',
        name: '',
        startAt: '',
        endAt: '',
        stage: '',
        performer: '',
        runtime: '',
        ageLimit: '',
        price: '',
        posterPath: '',
        genre: '',
        state: '',
        openrun: '',
        infoImages: [],
        time: '',
      );
    }
  }

  @override
  Future<StageDetail> getStageDetail({required String id}) async {
    try {
      final dto = await _api.getStageDetail(id: id);

      final stageDetail = dto.toStageDetail();

      return stageDetail;
    } catch (e) {
      ToastService().showToast('데이터 불러오기를 실패했습니다');
      return const StageDetail(
          id: '',
          address: ''
      );
    }
  }
}