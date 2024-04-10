import 'dart:convert';

import 'package:concert_list_app/data/data_source/concert_api.dart';
import 'package:concert_list_app/data/model/concert.dart';
import 'package:concert_list_app/service/xml_service.dart';
import 'package:intl/intl.dart';

abstract interface class ConcertRepository {

}

class ConcertRepositoryImpl implements ConcertRepository {
  final ConcertApi _api;

  ConcertRepositoryImpl({ConcertApi? api}) : _api = api ?? ConcertApi();

  Future<List<Concert>> getImminentOnDayConcertList() async {
    final DateTime nowDate = DateTime.now();
    final String startDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year, nowDate.month, nowDate.day + 1));
    final String endDate = DateFormat('yyyyMMdd').format(DateTime(nowDate.year, nowDate.month, nowDate.day + 7));

    try {
      final response = await _api.getImminentOnDayConcertList(startDate, endDate);
      final resultString = XmlService().xmlToJson(response);
      final List jsonList = jsonDecode(resultString)['dbs']['db'];

      final concertList = jsonList.map((e) => Concert.fromJson(e)).toList();

      return concertList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}