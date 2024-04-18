import 'package:concert_list_app/presentation/search/search_concert_list.dart';
import 'package:concert_list_app/presentation/search/search_header.dart';
import 'package:concert_list_app/presentation/search/search_input.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SearchHeader(),
          SearchInput(),
          SearchConcertList(),
        ],
      ),
    );
  }
}
