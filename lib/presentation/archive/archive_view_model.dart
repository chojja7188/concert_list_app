import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/service/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArchiveViewModel with ChangeNotifier{
  List<ConcertDetail> _archiveConcertList = [];
  List<ConcertDetail> get archiveConcertList => List.unmodifiable(_archiveConcertList);

  void fetchArchivedConcert() async {
    final hiveArchiveConcertList = await HiveService().getArchivedConcertList();
    _archiveConcertList = hiveArchiveConcertList.map((e) => e.copyWith(state: _setState(startDate: e.startAt, endDate: e.endAt))).toList();
    notifyListeners();
  }

  String _setState({required String startDate, required String endDate}) {
    final int nowDateNum = int.parse(DateFormat('yyyyMMdd').format(DateTime.now()));
    final int startDateNum = int.parse(startDate.replaceAll('.', ''));
    final int endDateNum = int.parse(endDate.replaceAll('.', ''));

    if (startDateNum > nowDateNum) return '공연예정';
    if (startDateNum <= nowDateNum && nowDateNum <= endDateNum) return '공연중';
    if (endDateNum < nowDateNum) return '공연완료';
    return '';
  }
}