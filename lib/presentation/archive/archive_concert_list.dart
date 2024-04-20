import 'package:concert_list_app/presentation/archive/archive_concert_card.dart';
import 'package:concert_list_app/presentation/archive/archive_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArchiveConcertList extends StatelessWidget {
  const ArchiveConcertList({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ArchiveViewModel>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text('(최대 20개까지 저장할 수 있습니다)', style: TextStyle(color: Colors.grey, fontSize: 10)),
          viewModel.archiveConcertList.isEmpty
              ? Text('즐겨찾기한 공연이 없습니다')
              : ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: viewModel.archiveConcertList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ArchiveConcertCard(concertDetail: viewModel.archiveConcertList[index]),
              )
          ),
        ],
      ),
    );
  }
}
