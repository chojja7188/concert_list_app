import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 8),
        child: Text('검색',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)
        ),
      ),
    );
  }
}
