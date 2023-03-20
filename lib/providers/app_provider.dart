import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesist_ios_app/configs/app.dart';


class AppProvider extends ChangeNotifier {
   static AppProvider state(BuildContext context, [listen = false]) =>
      Provider.of<AppProvider>(context, listen: listen);

  init(BuildContext context) {
    App.init(context);
    notifyListeners();
  }

  int bottomNavIndex = 0;
  void setBottomNavIndex(int index) {
    bottomNavIndex = index;
    notifyListeners();
  }
}