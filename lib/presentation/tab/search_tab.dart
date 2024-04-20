import 'package:concert_list_app/presentation/search/search_concert_list.dart';
import 'package:concert_list_app/presentation/search/search_header.dart';
import 'package:concert_list_app/presentation/search/search_input.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final ScrollController _scrollController = ScrollController();
  List<String> _select = ['sadf', 'sdfdsf', 'rewewrewr', 'wefwe'];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollToLoad);
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<SearchViewModel>().pullToRefresh(context),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SearchHeader(),
            SearchInput(),
            SearchConcertList(),
            DropdownButton(
                value: _select[0],
                items: _select.map((String e) => DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                )).toList(),
                onChanged: (value) {}
            ),
            DropdownMenu(
              label: Text('menu'),
              dropdownMenuEntries: _select.map((e) => DropdownMenuEntry<String>(value: e, label: e)).toList(),
              menuStyle: MenuStyle(
                maximumSize: MaterialStatePropertyAll(Size.fromHeight(120)),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void scrollToLoad() {
    if (_scrollController.position.extentAfter == 0) {
      context.read<SearchViewModel>().fetchSearchConcertList(context);
    }
  }
}
