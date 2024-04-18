import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/concert_detail/concert_detail_content.dart';
import 'package:concert_list_app/presentation/concert_detail/concert_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ConcertDetailScreen extends StatefulWidget {
  final String id;
  final String posterPath;
  const ConcertDetailScreen({Key? key, required this.id, required this.posterPath}) : super(key: key);

  @override
  State<ConcertDetailScreen> createState() => _ConcertDetailScreenState();
}

class _ConcertDetailScreenState extends State<ConcertDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<ConcertDetailViewModel>().fetchConcertDetail(widget.id));
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ConcertDetailViewModel>();

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,), onPressed: () {
          context.pop();
        }),
        backgroundColor: UiConfig.primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: widget.id,
                child: Image.network(
                  widget.posterPath,
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
                ),
              ),
              ConcertDetailContent(concertDetail: viewModel.concertDetail, stageDetail: viewModel.stageDetail,)
            ],
          ),
        ),
      ),
    );
  }
}