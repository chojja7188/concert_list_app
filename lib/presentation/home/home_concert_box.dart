import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/domain/model/concert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class HomeConcertBox extends StatelessWidget {
  final Concert concert;
  const HomeConcertBox({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(
            Uri(path: '/concertDetail', queryParameters: {'id': concert.id, 'posterPath': concert.posterPath, 'from': 'home'}).toString()
        );
      },
      child: SizedBox(
        width: 140,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: '${concert.id}-home',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  concert.posterPath,
                  fit: BoxFit.cover,
                  height: 200,
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
            const SizedBox(height: 4),
            Text(concert.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.bold),),
            Text('${concert.startAt} ~ ${concert.endAt}', style: const TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
