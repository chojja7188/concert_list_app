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
          StateBadge(state: concertDetail.state),
          SizedBox(height: 2),
          Text(concertDetail.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(concertDetail.stage, style: TextStyle(fontSize: 15)),
                    SizedBox(height: 4),
                    Text(stageDetail.address, style: TextStyle(fontSize: 15)),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          SizedBox(height: 16),
          Text('상세 정보', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xfff5f5f5)
            ),
            child: Column(
              children: [
                _buildInfoRow('시작일', concertDetail.startAt),
                _buildInfoRow('종료일', concertDetail.endAt),
                _buildInfoRow('관람시간', concertDetail.time),
                _buildInfoRow('소요시간', concertDetail.runtime),
                _buildInfoRow('출연', concertDetail.performer),
                _buildInfoRow('나이제한', concertDetail.ageLimit),
                SizedBox(height: 8),
                Divider(height: 1, color: Colors.grey.withOpacity(0.3)),
                SizedBox(height: 8),
                concertDetail.price.isEmpty
                    ? Container()
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('가격', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Spacer(),
                    Text(concertDetail.price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          _buildInfoImages(concertDetail.infoImages),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

Widget _buildInfoRow(String title, String data) {
  if (data.isEmpty) {
    return Container();
  }
  return Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(title), flex: 1),
        Expanded(child: Text(data, textAlign: TextAlign.right,), flex: 3)
      ],
    ),
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