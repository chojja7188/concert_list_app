import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/search/search_concert_card.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class SearchConcertList extends StatelessWidget {
  const SearchConcertList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: viewModel.query.isEmpty
          ? Center(child: Text('검색어를 입력하세요', style: TextStyle(color: UiConfig.primaryColor),))
          : _buildListView(viewModel)
    );
  }
}

Widget _buildListView(SearchViewModel viewModel) {
  return viewModel.searchConcertList.isEmpty
      ? Center(
      child: Column(
        children: [
          Text('검색 결과가 없습니다', style: TextStyle(color: UiConfig.primaryColor),),
          Text('검색어를 확인해주세요', style: TextStyle(color: UiConfig.primaryColor))
        ],
      ))
      : ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: viewModel.searchConcertList
          .map((e) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: SearchConcertCard(concert: e),
      )).toList()
  );
}
