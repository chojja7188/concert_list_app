import 'package:concert_list_app/data/model/concert_detail.dart';
import 'package:concert_list_app/data/repository/concert_repository_impl.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:flutter/material.dart';

class ConcertDetailViewModel with ChangeNotifier {
  ConcertRepository _concertRepository;

  ConcertDetailViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  late ConcertDetail concertDetail;

  void fetchConcertDetail(String id) async {
    concertDetail = await _concertRepository.getConcertDetail(id: id);
    notifyListeners();
  }
}