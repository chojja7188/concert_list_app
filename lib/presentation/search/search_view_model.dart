import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/repository_impl/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchViewModel with ChangeNotifier {
  final ConcertRepository _concertRepository;
  SearchViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  List<Concert> _searchConcertList = [];
  List<Concert> get searchConcertList => List.unmodifiable(_searchConcertList);

  int _currentPage = 0;
  String _query = '';
  String get query => _query;

  void fetchSearchConcertList(BuildContext context) async {
    if (_searchController.text.isEmpty) {
      ToastService().showToast('검색어를 입력하세요');
      return;
    }
    _query = 'shprfnm=${searchController.text}';
    showDialog(barrierDismissible: false, context: context, builder: (context) {
      return const PopScope(
          canPop: false,
          child: SpinKitWaveSpinner(color: UiConfig.primaryColor)
      );
    });
    _searchConcertList.addAll(await _concertRepository.getSearchConcertList(query: _query, page: ++_currentPage));
    Navigator.pop(context);
    notifyListeners();
  }

  void reset() {
    _currentPage = 0;
    _searchConcertList = [];
  }

  Future<void> pullToRefresh(BuildContext context) async {
    reset();
    fetchSearchConcertList(context);
    notifyListeners();
  }
}