import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/data/model/concert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchConcertCard extends StatelessWidget {
  final Concert concert;
  const SearchConcertCard({Key? key, required this.concert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  _buildStateBox(concert.state),
                  Text(concert.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      overflow: TextOverflow.ellipsis, maxLines: 2
                  ),
                  Text('장소 : ${concert.stage}', overflow: TextOverflow.ellipsis, maxLines: 2,),
                  Text('${concert.startAt} ~ ${concert.endAt}', style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0,
            right: 0,
            child: Icon(Icons.chevron_right)
        )
      ],
    );
  }
}

Widget _buildStateBox(String state) {
  if (state == '공연완료') {
    return Container(
        padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: UiConfig.primaryColor, width: 1),
            color: Colors.white
        ),
        child: Text(state, style: TextStyle(color: UiConfig.primaryColor, fontSize: 12),)
    );
  } else {
    return Container(
        padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: UiConfig.primaryColor
        ),
        child: Text(state, style: TextStyle(color: Colors.white, fontSize: 12),)
    );
  }
}