import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/app/app_defaults.dart';
import 'package:online_learning_ui_kit/ui/views/course_view/course_viewmodel.dart';
import 'package:online_learning_ui_kit/ui/widgets/box_container.dart';
import 'package:provider/provider.dart';

class CourseView extends StatelessWidget {
  const CourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CourseViewModel(),
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
    return Center(
      child: Column(
        children: const [
          Expanded(flex: 2, child: _TitleWidget()),
          Expanded(
            flex: 2,
            child: _SearchBoxWidget(),
          ),
          Expanded(flex: 4, child: _HorizontalSliderWidget()),
          Expanded(flex: 10, child: _TabBarWidget())
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(AppDefaults.kStandartContentPadding),
      child: Row(
        children: const [
          Text("Course"),
          // Image.network(src)
        ],
      ),
    );
  }
}

class _SearchBoxWidget extends StatelessWidget {
  const _SearchBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.kStandartContentMargin),
      height: 40,

      color: const Color(0xffF4F3FD),
      child: TextFormField(),
      // decoration: const BoxDecoration(border: Border()),
    );
  }
}

class _HorizontalSliderWidget extends StatelessWidget {
  const _HorizontalSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ListView(scrollDirection: Axis.horizontal, children: const [
        BoxContainer(
          height: 100,
          width: 250,
          color: Color(0xffCEECFE),
        ),
        BoxContainer(
          height: 100,
          width: 250,
          color: Color(0xffBFE4C6),
        ),
        BoxContainer(
          height: 100,
          width: 250,
          color: Colors.amber,
        ),
      ]),
    );
  }
}

class _TabBarWidget extends StatelessWidget {
  const _TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
