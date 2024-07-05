import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/presentation/archive/archive_view_model.dart';
import 'package:concert_list_app/presentation/component/state_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ArchiveConcertCard extends StatelessWidget {
  final ConcertDetail concertDetail;
  const ArchiveConcertCard({super.key, required this.concertDetail});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.push(
            Uri(path: '/concertDetail', queryParameters: {'id': concertDetail.id, 'posterPath': concertDetail.posterPath, 'from': 'archive'}).toString()
        );
        if (context.mounted) {
          context.read<ArchiveViewModel>().fetchArchivedConcert();
        }
      },
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: '${concertDetail.id}-archive',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    concertDetail.posterPath,
                    fit: BoxFit.cover,
                    height: 130,
                    width: 100,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) {
                        return child;
                      }
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: SpinKitWaveSpinner(
                            color: UiConfig.primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StateBadge(state: concertDetail.state),
                    const SizedBox(height: 4),
                    Text('${concertDetail.startAt} ~ ${concertDetail.endAt}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(height: 4),
                    Text(concertDetail.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        overflow: TextOverflow.ellipsis, maxLines: 2
                    ),
                    Text('장소 : ${concertDetail.stage}', overflow: TextOverflow.ellipsis, maxLines: 2,),
                  ],
                ),
              )
            ],
          ),
          const Positioned(
              top: 0,
              right: 0,
              child: Row(
                children: [
                  Text('더보기', style: TextStyle(fontSize: 12, color: Color(0xff424242))),
                  Icon(Icons.chevron_right),
                ],
              )
          )
        ],
      ),
    );
  }
}
