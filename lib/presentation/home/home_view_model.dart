import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/repository_impl/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class HomeViewModel with ChangeNotifier {
  final ConcertRepository _concertRepository;
  HomeViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  List<Concert> _newConcertList = [];
  List<Concert> get newConcertList => List.unmodifiable(_newConcertList);
  List<Concert> _todayConcertList = [];
  List<Concert> get todayConcertList => List.unmodifiable(_todayConcertList);
  List<Concert> _imminentOnDayConcertList = [];
  List<Concert> get imminentOnDayConcertList => List.unmodifiable(_imminentOnDayConcertList);

  void fetchHomeConcertList(BuildContext context) async {
    showDialog(barrierDismissible: false, context: context, builder: (context) {
      return const PopScope(
          canPop: false,
          child: SpinKitWaveSpinner(color: UiConfig.primaryColor)
      );
    });
    await fetchOpenrunConcertList();
    await fetchTodayConcertList();
    await fetchImminentOnDayConcertList();
    if (context.mounted) {
      context.pop();
    }
  }

  Future<void> fetchOpenrunConcertList() async {
    _newConcertList = await _concertRepository.getNewConcertList();
    notifyListeners();
  }

  Future<void> fetchTodayConcertList() async {
    _todayConcertList = await _concertRepository.getTodayConcertList();
    notifyListeners();
  }

  Future<void> fetchImminentOnDayConcertList() async {
    _imminentOnDayConcertList = await _concertRepository.getImminentOnDayConcertList();
    notifyListeners();
  }
}