import 'package:flutter/material.dart';

import '../app/router/router.gr.dart';

class AppConfigServices with ChangeNotifier {
  static final _appRouter = AppRouter();
  static AppRouter get appRouter => _appRouter;
  static BuildContext? get context => _appRouter.navigatorKey.currentContext;
}
