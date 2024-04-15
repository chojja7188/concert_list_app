import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/model/concert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeConcertBox extends StatelessWidget {
  final Concert concert;
  const HomeConcertBox({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            concert.posterPath,
            fit: BoxFit.contain,
            height: 200,
            loadingBuilder: (context, child, progress) {
                if (progress == null) {
                  return child;
                }
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: SpinKitWaveSpinner(
                      color: UiConfig.primaryColor,
                    ),
                  ),
                );
            },
          ),
          Text(concert.name, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold),),
          Text('${concert.startAt} ~ ${concert.endAt}', style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}
