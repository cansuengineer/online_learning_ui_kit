import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/assets/app_colors.dart';
import 'package:online_learning_ui_kit/assets/light_theme.dart';
import 'package:online_learning_ui_kit/ui/views/home_view/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      builder: (context, _) {
        return const _ViewContext();
      },
    );
  }
}

class _ViewContext extends StatelessWidget {
  const _ViewContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[_BackgroudWidget(), _ComponentsWidget()],
      ),
    );
  }
}

class _BackgroudWidget extends StatelessWidget {
  const _BackgroudWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            color: lightThemeData.primaryColor,
          ),
        ),
        Expanded(
            flex: 10,
            child: Container(
              color: ColorPalette.lightThemePalette().color9,
            ))
      ],
    );
  }
}

class _ComponentsWidget extends StatelessWidget {
  const _ComponentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          Expanded(flex: 1, child: _RersonInfoWidget()),
          Expanded(flex: 1, child: _CardWidget()),
          Expanded(flex: 2, child: _HorizontalSliderWidget()),
          Expanded(flex: 3, child: _ScrollListWidget()),
        ],
      ),
    );
  }
}

class _RersonInfoWidget extends StatelessWidget {
  const _RersonInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsetsDirectional.fromSTEB(0, 40, 20, 0),
              padding: const EdgeInsets.all(20),
              height: 30,
              width: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: const [Text("data"), Text("data")],
            ),
          )
        ],
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}

class _HorizontalSliderWidget extends StatelessWidget {
  const _HorizontalSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ScrollListWidget extends StatelessWidget {
  const _ScrollListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
