import 'package:concert_list_app/data/model/concert.dart';
import 'package:concert_list_app/data/repository/concert_repository.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  ConcertRepository _concertRepository;
  HomeViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  List<Concert> _imminentOnDayConcertList = [];

  List<Concert> get imminentOnDayConcertList => List.unmodifiable(_imminentOnDayConcertList);

  void fetchImminentOnDayConcertList() async {
    _imminentOnDayConcertList = await _concertRepository.getImminentOnDayConcertList();
    notifyListeners();
  }

  @override
  void dispose() {
    print('디스포즈 됩니다!');
    super.dispose();
  }
}