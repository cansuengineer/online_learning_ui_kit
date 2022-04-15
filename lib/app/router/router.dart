import 'package:auto_route/annotations.dart';
import 'package:online_learning_ui_kit/ui/bottom_bar_view/bottom_bar_view.dart';
import 'package:online_learning_ui_kit/ui/views/account_view/account_view.dart';
import 'package:online_learning_ui_kit/ui/views/course_view/course_view.dart';
import 'package:online_learning_ui_kit/ui/views/home_view/home_view.dart';
import 'package:online_learning_ui_kit/ui/views/login_view/login_view.dart';
import 'package:online_learning_ui_kit/ui/views/message_view/message_view.dart';
import 'package:online_learning_ui_kit/ui/views/search_view/search_view.dart';

@AdaptiveAutoRouter(routes: [
  AutoRoute(
    page: LoginView,
    initial: true,
    name: "loginViewRouter",
  ),
  AutoRoute(
    page: BottomBarView,
    name: "bottomBarViewRouter",
  ),
  AutoRoute(page: HomeView, name: "homeView"),
  AutoRoute(page: CourseView, name: "courseView"),
  AutoRoute(page: SearchView, name: "searchView"),
  AutoRoute(page: MessageView, name: "messageView"),
  AutoRoute(page: AccountView, name: "accountView")
])
class $AppRouter {
  LoginView? loginView;
  BottomBarView? bottomBarView;
  HomeView? homeView;
  CourseView? courseView;
  SearchView? searchView;
  MessageView? messageView;
  AccountView? accountView;
}
