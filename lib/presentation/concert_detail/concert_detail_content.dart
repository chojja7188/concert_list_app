import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/domain/model/concert_detail.dart';
import 'package:concert_list_app/domain/model/stage_detail.dart';
import 'package:concert_list_app/presentation/component/state_badge.dart';
import 'package:concert_list_app/presentation/concert_detail/concert_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ConcertDetailContent extends StatelessWidget {
  final ConcertDetail concertDetail;
  final StageDetail stageDetail;
  const ConcertDetailContent({Key? key, required this.concertDetail, required this.stageDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ConcertDetailViewModel>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(concertDetail.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(concertDetail.stage, style: TextStyle(fontSize: 18)),
          Text(stageDetail.address),
          SizedBox(height: 8),
          StateBadge(state: concertDetail.state),
          SizedBox(height: 16),
          Text('상세 정보', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xfffafafa)
            ),
            child: Column(
              children: [
                _buildInfoRow('가격', concertDetail.price),
                _buildInfoRow('시작일', concertDetail.startAt),
                _buildInfoRow('종료일', concertDetail.endAt),
                _buildInfoRow('관람시간', concertDetail.time),
                _buildInfoRow('소요시간', concertDetail.runtime),
                _buildInfoRow('출연', concertDetail.performer),
                _buildInfoRow('나이제한', concertDetail.ageLimit),
              ],
            ),
          ),
          _buildInfoImages(concertDetail.infoImages),
          SizedBox(height: 40),
          Center(
            child: SizedBox(
              height: 60,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(UiConfig.primaryColor)),
                  onPressed: () {
                    viewModel.launchWeb(concertDetail.id, context);
                  },
                  child: Text('상세보기', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildInfoRow(String title, String data) {
  if (data.isEmpty) {
    return Container();
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title),
      Spacer(),
      Text(data)
    ],
  );
}

Widget _buildInfoImages(dynamic images) {
  if (images == '' || images == []) {
    return Container();
  }
  if (images is String) {
    return Image.network(
      images,
      fit: BoxFit.cover,
      width: double.infinity,
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
    );
  } else {
    return Column(
        children: images.map<Widget>((e) => Image.network(
          e,
          fit: BoxFit.cover,
          width: double.infinity,
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
        )).toList());
  }
}