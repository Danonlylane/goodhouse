import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/index.dart';
import 'package:goodhouse/pages/login.dart';
import 'package:goodhouse/pages/register.dart';
import 'package:goodhouse/pages/room_detail/index.dart';

import 'pages/not_found.dart';

class Routes {
  // 定义路由名称
  static String home = '/';
  static String login = 'login';
  static String register = '/register';
  static String roomDetail = '/room/roomId';

  // 定义路由处理函数

  // var rootHandler = Handler(
  //     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  //   return HomePage();
  // });
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return LoginPage();
  });

  static Handler _registerHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RegisterPage();
  });

  static Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NotFoundPage();
  });

  static Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomDetailPage(
      roomId: params['roomId']![0],
    );
  });

  // 编写路由处理函数
  static void configureRoutes(FluroRouter router) {
    // router.notFoundHandler = Handler(
    //     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    //   print("ROUTE WAS NOT FOUND !!!");
    //   return;
    // });

    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHanlder);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;

    // router.define(root, handler: rootHandler);
    // router.define(demoSimple, handler: demoRouteHandler);
    // router.define(demoSimpleFixedTrans,
    //     handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
    // router.define(demoFunc, handler: demoFunctionHandler);
    // router.define(deepLink, handler: deepLinkHandler);
  }
}
