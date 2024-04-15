import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/model/concert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchConcertCard extends StatelessWidget {
  final Concert concert;
  const SearchConcertCard({Key? key, required this.concert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          concert.posterPath,
          fit: BoxFit.cover,
          height: 130,
          width: 100,
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
      ],
    );
  }
}
