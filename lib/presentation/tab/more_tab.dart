import 'package:flutter/material.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [

          Text('본 서비스는 KOPIS OPEN API를 사용하고 있습니다.',
          style: TextStyle(color: Colors.grey),
          ),
          Text("(재)예술경영지원센터 공연예술통합전산망, www.kopis.or.kr",
          style: TextStyle(color: Colors.grey, fontSize: 12))
        ],
      ),
    );
  }
}
