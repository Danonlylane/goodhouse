import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodhouse/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      onGenerateRoute: router.generator,
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    );
  }
}
