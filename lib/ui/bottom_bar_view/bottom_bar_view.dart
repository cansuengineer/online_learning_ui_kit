import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/assets/app_colors.dart';
import 'package:online_learning_ui_kit/ui/bottom_bar_view/bottom_bar_viewmodel.dart';
import 'package:online_learning_ui_kit/ui/views/account_view/account_view.dart';
import 'package:online_learning_ui_kit/ui/views/course_view/course_view.dart';
import 'package:online_learning_ui_kit/ui/views/home_view/home_view.dart';
import 'package:online_learning_ui_kit/ui/views/message_view/message_view.dart';
import 'package:online_learning_ui_kit/ui/views/search_view/search_view.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomBarViewModel(),
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
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: ColorPalette.lightThemePalette().color9,
        activeColor: ColorPalette.lightThemePalette().color1,
        elevation: 3,
        color: ColorPalette.lightThemePalette().color3,
        style: TabStyle.fixedCircle,
        height: 55,
        items: const [
          TabItem(
            icon: Icons.home,
            title: "Home",
          ),
          TabItem(
            icon: Icons.book,
            title: "Course",
          ),
          TabItem(icon: Icons.search, title: "Search"),
          TabItem(icon: Icons.message, title: "Message"),
          TabItem(icon: Icons.person, title: "Account")
        ],
        initialActiveIndex:
            // 0,
            context.read<BottomBarViewModel>().bottomBarIndex,
        onTap:
            //  (int i) => print('click index=$i'),
            context.read<BottomBarViewModel>().onTap,
      ),
      body: const _BodyWidget(),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _widgetList = [
      const HomeView(),
      const CourseView(),
      const SearchView(),
      const MessageView(),
      const AccountView(),
    ];

    return Selector<BottomBarViewModel, int>(
        selector: (_, model) => model.bottomBarIndex,
        builder: (context, value, _) {
          return _widgetList[value];
        });
  }
}
