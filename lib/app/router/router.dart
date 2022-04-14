import 'package:auto_route/annotations.dart';
import 'package:online_learning_ui_kit/ui/bottom_bar_view/bottom_bar_view.dart';
import 'package:online_learning_ui_kit/ui/views/home_view/home_view.dart';
import 'package:online_learning_ui_kit/ui/views/login_view/login_view.dart';

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
])
class $AppRouter {
  LoginView? loginView;
  BottomBarView? bottomBarView;
  HomeView? homeView;
}
