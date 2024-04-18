import 'package:concert_list_app/data/repository/concert_repository_impl.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
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

  bool isLoading = false;

  void fetchConcertDetail(String id) async {
    isLoading = true;
    notifyListeners();
    concertDetail = await _concertRepository.getConcertDetail(id: id);
    stageDetail = await _concertRepository.getStageDetail(id: concertDetail.stageId);
    isLoading = false;
    notifyListeners();
  }

  void launchWeb(String id, BuildContext context) async {
    if (!await launchUrl(Uri.parse('https://kopis.or.kr/mob/db/pblprfrView.do?mt20Id=$id'))) {
      throw Exception('Could not launchUrl');
    }
  }
}