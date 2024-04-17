import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ConcertApi {
  final _baseUrl = 'http://kopis.or.kr/openApi/restful';
  final _apiKey = dotenv.get('KOPIS_API_KEY');
  final http.Client _client;

  ConcertApi({http.Client? client}) : _client = client ?? http.Client();

  // 오늘의 공연 리스트
  Future<http.Response> getTodayConcertList(String date) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$date&eddate=$date&cpage=1&rows=10&shcate=CCCD'
    )).onError((error, stackTrace) => throw Exception('Error: $error'));

    return response;
  }

  // 공연 예정일 임박 공연 리스트
  Future<http.Response> getImminentOnDayConcertList(String startDate, String endDate) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$startDate&eddate=$endDate&cpage=1&rows=10&shcate=CCCD&prfstate=01'
    )).onError((error, stackTrace) => throw Exception('Error: $error'));

    return response;
  }

  Future<http.Response> getSearchConcertList(String query, int page, String startDate, String endDate) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr?service=$_apiKey&newSql=Y&stdate=$startDate&eddate=$endDate&cpage=$page&rows=10&shcate=CCCD&$query'
    )).onError((error, stackTrace) => throw Exception('Error: $error'));

    return response;
  }

  Future<http.Response> getConcertDetail({required String id}) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/pblprfr/$id?service=$_apiKey&newSql=Y'
    )).onError((error, stackTrace) => throw Exception('Error: $error'));

    return response;
  }

  Future getConcertList() async {
    final response = await _client.get(Uri.parse('$_baseUrl/pblprfr?service=$_apiKey&newSql=Y'))
        .onError((error, stackTrace) => throw Exception('Error: $error'));
  }
}