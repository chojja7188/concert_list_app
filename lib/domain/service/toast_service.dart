import 'package:concert_list_app/config/ui_config.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: UiConfig.primaryColor.withOpacity(0.8)
    );
  }
}