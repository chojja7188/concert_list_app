import 'package:concert_list_app/data/repository/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/domain/service/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConcertDetailViewModel with ChangeNotifier {
  ConcertRepository _concertRepository;

  ConcertDetailViewModel({ConcertRepository? repository}) : _concertRepository = repository ?? ConcertRepositoryImpl();

  ConcertDetail concertDetail = const ConcertDetail(
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
      infoImages: [],
      time: ''
  );

  StageDetail stageDetail = const StageDetail(
    id: '',
    address: ''
  );

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  bool _isArchived = false;
  bool get isArchived => _isArchived;

  void fetchConcertDetail(String id) async {
    _isLoading = true;
    notifyListeners();
    concertDetail = await _concertRepository.getConcertDetail(id: id);
    stageDetail = await _concertRepository.getStageDetail(id: concertDetail.stageId);
    _isLoading = false;
    _isArchived = HiveService().isStillContain(concertDetail: concertDetail);
    notifyListeners();
  }

  void launchWeb(String id, BuildContext context) async {
    if (!await launchUrl(Uri.parse('https://kopis.or.kr/mob/db/pblprfrView.do?mt20Id=$id'))) {
      throw Exception('Could not launchUrl');
    }
  }

  void clickArchiveButton() async {
    if (isArchived) {
      await HiveService().deleteArchivedConcert(concertDetail: concertDetail);
      _isArchived = false;
    } else {
      bool result = await HiveService().addArchivedConcert(concertDetail: concertDetail);
      if (result) {
        _isArchived = true;
      }
    }
    notifyListeners();
  }

}