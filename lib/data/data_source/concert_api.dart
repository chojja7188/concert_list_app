import 'dart:convert';

import 'package:concert_list_app/data/dto/concert_detail_dto.dart';
import 'package:concert_list_app/data/dto/concert_dto.dart';
import 'package:concert_list_app/data/dto/stage_detail_dto.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:concert_list_app/domain/service/xml_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ConcertApi {
  final _baseUrl = 'http://kopis.or.kr/openApi/restful';
  final _apiKey = dotenv.get('KOPIS_API_KEY');
  final http.Client _client;

  ConcertApi({http.Client? client}) : _client = client ?? http.Client();

  // 오늘의 공연 리스트
  Future<List<ConcertDto>> getTodayConcertList(String date) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$date&eddate=$date&cpage=1&rows=10&shcate=CCCD'
    )).onError((error, stackTrace) {
      ToastService().showToast('서버 문제가 발생했습니다');
      throw Exception('Error: $error');
    });

    final resultString = XmlService().xmlToJson(response);
    final List jsonList = jsonDecode(resultString)['dbs']['db'];

    return jsonList.map((e) => ConcertDto.fromJson(e)).toList();
  }

  // 공연 예정일 임박 공연 리스트
  Future<List<ConcertDto>> getImminentOnDayConcertList(String startDate, String endDate) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$startDate&eddate=$endDate&cpage=1&rows=10&shcate=CCCD&prfstate=01'
    )).onError((error, stackTrace) {
      ToastService().showToast('서버 문제가 발생했습니다');
      throw Exception('Error: $error');
    });

    if (response.statusCode != 200) ToastService().showToast('서버 문제가 발생했습니다');

    final resultString = XmlService().xmlToJson(response);
    final List jsonList = jsonDecode(resultString)['dbs']['db'];

    return jsonList.map((e) => ConcertDto.fromJson(e)).toList();
  }

  Future<Map<String, dynamic>> getSearchConcertList(String query, int page, String startDate, String endDate) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$startDate&eddate=$endDate&cpage=$page&rows=10&shcate=CCCD&$query'
    )).onError((error, stackTrace) {
      ToastService().showToast('서버 문제가 발생했습니다');
      throw Exception('Error: $error');
    });

    if (response.statusCode != 200) ToastService().showToast('서버 문제가 발생했습니다');

    final resultString = XmlService().xmlToJson(response);
   // final List jsonList = jsonDecode(resultString)['dbs'];

    return jsonDecode(resultString);
    // return jsonList.map((e) => ConcertDto.fromJson(e)).toList();
  }

  Future<ConcertDetailDto> getConcertDetail({required String id}) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr/$id?service=$_apiKey&newSql=Y'
    )).onError((error, stackTrace) {
      ToastService().showToast('서버 문제가 발생했습니다');
      throw Exception('Error: $error');
    });

    if (response.statusCode != 200) ToastService().showToast('서버 문제가 발생했습니다');

    final resultString = XmlService().xmlToJson(response);
    final json = jsonDecode(resultString)['dbs']['db'];
    print(json);

    return ConcertDetailDto.fromJson(json);
  }

  Future<StageDetailDto> getStageDetail({required String id}) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/prfplc/$id?service=$_apiKey&newSql=Y'
    )).onError((error, stackTrace) {
      ToastService().showToast('서버 문제가 발생했습니다');
      throw Exception('Error: $error');
    });

    if (response.statusCode != 200) ToastService().showToast('서버 문제가 발생했습니다');

    final resultString = XmlService().xmlToJson(response);
    final json = jsonDecode(resultString)['dbs']['db'];

    return StageDetailDto.fromJson(json);
  }
}