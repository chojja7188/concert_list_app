import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('검색',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)
        ),
      ),
    );
  }
}
