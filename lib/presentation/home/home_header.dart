import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('모든 콘서트, ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)
              ),
              Image.asset('assets/images/mocon_logo_dark.png', width: 100)
            ],
          ),
        ),
      ],
    );
  }
}
