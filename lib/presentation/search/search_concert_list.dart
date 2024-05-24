import 'package:concert_list_app/presentation/search/search_concert_card.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchConcertList extends StatelessWidget {
  const SearchConcertList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: viewModel.query.isEmpty
          ? Column(
            children: [
              Text('검색어를 입력하세요'),
              Text('(3년 이내의 데이터까지 검색할 수 있습니다)', style: TextStyle(color: Colors.grey, fontSize: 10),)
            ],
          )
          : _buildListView(viewModel)
    );
  }
}

Widget _buildListView(SearchViewModel viewModel) {
  return viewModel.searchConcertList.isEmpty
      ? const Center(
      child: Column(
        children: [
          Text('검색 결과가 없습니다'),
          Text('검색어를 확인해주세요')
        ],
      ))
      : ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.searchConcertList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: SearchConcertCard(concert: viewModel.searchConcertList[index]),
      )
  );
}
