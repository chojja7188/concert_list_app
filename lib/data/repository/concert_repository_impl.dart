import 'dart:convert';

import 'package:concert_list_app/data/data_source/concert_api.dart';
import 'package:concert_list_app/data/model/concert.dart';
import 'package:concert_list_app/data/model/concert_detail.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/xml_service.dart';
import 'package:intl/intl.dart';

class ConcertRepositoryImpl implements ConcertRepository {
  final ConcertApi _api;

  ConcertRepositoryImpl({ConcertApi? api}) : _api = api ?? ConcertApi();

  @override
  Future<List<Concert>> getTodayConcertList() async {
    final String nowDate = DateFormat('yyyyMMdd').format(DateTime.now());
    try {
      final response = await _api.getTodayConcertList(nowDate);
      final resultString = XmlService().xmlToJson(response);
      final List jsonList = jsonDecode(resultString)['dbs']['db'];

      final concertList = jsonList.map((e) => Concert.fromJson(e)).toList();

      return concertList;
    } catch(e) {
      print(e);
      return [];
    }
  }

  @override
  Future<List<Concert>> getImminentOnDayConcertList() async {
    final DateTime nowDate = DateTime.now();
    final String startDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year, nowDate.month, nowDate.day));
    final String endDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year, nowDate.month, nowDate.day + 3));

    try {
      final response = await _api.getImminentOnDayConcertList(startDate, endDate);
      final resultString = XmlService().xmlToJson(response);
      final List jsonList = jsonDecode(resultString)['dbs']['db'];

      final concertList = jsonList.map((e) => Concert.fromJson(e)).toList();

      return concertList;
    } catch(e) {
      print(e);
      return [];
    }
  }

  @override
  Future<List<Concert>> getSearchConcertList({required String query, required int page}) async {
    final DateTime nowDate = DateTime.now();
    final String startDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year - 5, nowDate.month, nowDate.day));
    final String endDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year + 1, nowDate.month, nowDate.day));

    try {
      final response = await _api.getSearchConcertList(query, page, startDate, endDate);
      final resultString = XmlService().xmlToJson(response);
      final List jsonList = jsonDecode(resultString)['dbs']['db'];

      final concertList = jsonList.map((e) => Concert.fromJson(e)).toList();

      return concertList;
    } catch(e) {
      print(e);
      return [];
    }
  }

  @override
   Future<ConcertDetail> getConcertDetail({required String id}) async {
    try {
      final response = await _api.getConcertDetail(id: id);
      final resultString = XmlService().xmlToJson(response);
      final json = jsonDecode(resultString)['dbs']['db'];

      final concertDetail = ConcertDetail.fromJson(json);
      
      return concertDetail;
    } catch(e, s) {
      print(e);
      print(s);

      return ConcertDetail(
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
      );
    }
  }
}