import 'package:flutter/cupertino.dart';
import 'package:online_learning_ui_kit/services/app_confic_service.dart';

import '../../../app/router/router.gr.dart';

class LoginViewModel extends ChangeNotifier {
  void onTap() {
    final appRouter = AppConfigServices.appRouter;
    appRouter.replace(const BottomBarViewRouter());

    notifyListeners();
    print("tıklandı");
  }
}
