import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/repository/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchViewModel with ChangeNotifier {
  final ConcertRepository _concertRepository;
  SearchViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  TextEditingController searchController = TextEditingController();
  List<Concert> _searchConcertList = [];
  List<Concert> get searchConcertList => List.unmodifiable(_searchConcertList);

  int _currentPage = 1;
  String _query = '';
  String get query => _query;

  void fetchSearchConcertList(BuildContext context) async {
    if (searchController.text.isEmpty) {
      ToastService().showToast('검색어를 입력하세요');
      return;
    }
    _query = 'shprfnm=${searchController.text}';
    showDialog(barrierDismissible: false, context: context, builder: (context) {
      return SpinKitWaveSpinner(color: UiConfig.primaryColor);
    });
    _searchConcertList = await _concertRepository.getSearchConcertList(query: _query, page: _currentPage);
    Navigator.pop(context);
    notifyListeners();
  }
}