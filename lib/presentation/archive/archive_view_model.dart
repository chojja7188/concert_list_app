import 'package:concert_list_app/data/repository/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/hive_service.dart';
import 'package:flutter/material.dart';

class ArchiveViewModel with ChangeNotifier{
  final ConcertRepository _concertRepository;
  ArchiveViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  List<ConcertDetail> _archiveConcertList = [];
  List<ConcertDetail> get archiveConcertList => _archiveConcertList;

  void fetchArchivedConcert() async {
    _archiveConcertList = await HiveService().getArchivedConcertList();
    notifyListeners();
  }
}