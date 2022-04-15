import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/assets/light_theme.dart';
import 'package:online_learning_ui_kit/services/app_confic_service.dart';

class AppHolder extends StatefulWidget {
  const AppHolder({Key? key}) : super(key: key);

  @override
  State<AppHolder> createState() => _AppHolderState();
}

class _AppHolderState extends State<AppHolder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Online Learning UI Kit",
      theme: lightThemeData,
      routerDelegate: AppConfigServices.appRouter
          .delegate(navigatorObservers: () => [AutoRouteObserver()]),
      routeInformationParser: AppConfigServices.appRouter.defaultRouteParser(),

      // home: const LoginView(),
    );
  }
}
