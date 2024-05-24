import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:concert_list_app/presentation/component/state_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class SearchConcertCard extends StatelessWidget {
  final Concert concert;
  const SearchConcertCard({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(
            Uri(path: '/concertDetail', queryParameters: {'id': concert.id, 'posterPath': concert.posterPath, 'from': 'search'}).toString()
        );
      },
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: '${concert.id}-search',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    concert.posterPath,
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
                    StateBadge(state: concert.state),
                    const SizedBox(height: 4),
                    Text('${concert.startAt} ~ ${concert.endAt}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(height: 4),
                    Text(concert.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        overflow: TextOverflow.ellipsis, maxLines: 2
                    ),
                    Text('장소 : ${concert.stage}', overflow: TextOverflow.ellipsis, maxLines: 2,),
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