import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/domain/service/toast_service.dart';
import 'package:concert_list_app/presentation/more/more_menu.dart';
import 'package:flutter/material.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => ToastService().showToast('본 앱은 개인 정보를 수집하지 않습니다'),
              child: MoreMenu(title: '개인정보처리방침')
          ),
          InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LicensePage())
              ),
              child: MoreMenu(title: '라이센스',)
          ),
          SizedBox(height: 40),
          Text('본 서비스는 KOPIS OPEN API를 사용하고 있습니다.',
            style: TextStyle(color: UiConfig.primaryColor),
          ),
          Text("(재)예술경영지원센터 공연예술통합전산망, www.kopis.or.kr",
              style: TextStyle(color: Colors.grey, fontSize: 12)
          ),
          SizedBox(height: 20),
          Text('버그 제보 : chojja7188@gmail.com',
              style: TextStyle(color: Colors.grey, fontSize: 12))
        ],
      ),
    );
  }
}