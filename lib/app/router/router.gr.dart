// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:online_learning_ui_kit/ui/bottom_bar_view/bottom_bar_view.dart'
    as _i2;
import 'package:online_learning_ui_kit/ui/views/account_view/account_view.dart'
    as _i7;
import 'package:online_learning_ui_kit/ui/views/course_view/course_view.dart'
    as _i4;
import 'package:online_learning_ui_kit/ui/views/home_view/home_view.dart'
    as _i3;
import 'package:online_learning_ui_kit/ui/views/login_view/login_view.dart'
    as _i1;
import 'package:online_learning_ui_kit/ui/views/message_view/message_view.dart'
    as _i6;
import 'package:online_learning_ui_kit/ui/views/search_view/search_view.dart'
    as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginViewRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LoginView());
    },
    BottomBarViewRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.BottomBarView());
    },
    HomeView.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomeView());
    },
    CourseView.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.CourseView());
    },
    SearchView.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.SearchView());
    },
    MessageView.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.MessageView());
    },
    AccountView.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.AccountView());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(LoginViewRouter.name, path: '/'),
        _i8.RouteConfig(BottomBarViewRouter.name, path: '/bottom-bar-view'),
        _i8.RouteConfig(HomeView.name, path: '/home-view'),
        _i8.RouteConfig(CourseView.name, path: '/course-view'),
        _i8.RouteConfig(SearchView.name, path: '/search-view'),
        _i8.RouteConfig(MessageView.name, path: '/message-view'),
        _i8.RouteConfig(AccountView.name, path: '/account-view')
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginViewRouter extends _i8.PageRouteInfo<void> {
  const LoginViewRouter() : super(LoginViewRouter.name, path: '/');

  static const String name = 'LoginViewRouter';
}

/// generated route for
/// [_i2.BottomBarView]
class BottomBarViewRouter extends _i8.PageRouteInfo<void> {
  const BottomBarViewRouter()
      : super(BottomBarViewRouter.name, path: '/bottom-bar-view');

  static const String name = 'BottomBarViewRouter';
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i8.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.CourseView]
class CourseView extends _i8.PageRouteInfo<void> {
  const CourseView() : super(CourseView.name, path: '/course-view');

  static const String name = 'CourseView';
}

/// generated route for
/// [_i5.SearchView]
class SearchView extends _i8.PageRouteInfo<void> {
  const SearchView() : super(SearchView.name, path: '/search-view');

  static const String name = 'SearchView';
}

/// generated route for
/// [_i6.MessageView]
class MessageView extends _i8.PageRouteInfo<void> {
  const MessageView() : super(MessageView.name, path: '/message-view');

  static const String name = 'MessageView';
}

/// generated route for
/// [_i7.AccountView]
class AccountView extends _i8.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: '/account-view');

  static const String name = 'AccountView';
}
