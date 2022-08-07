import 'package:flutter/material.dart';
import 'package:kick_toad/ui/page/menu_page.dart';
import 'package:kick_toad/ui/page/start_page.dart';

import 'game_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  /// remove debug flag
  /// https://blog.csdn.net/qq_42351033/article/details/107420489
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kick Toad Demo',
      debugShowCheckedModeBanner: false,
      //注册路由表
      routes: {
        "menu_page": (context) => MenuPage(),
        "game_page": (context) => GamePage(),
        "start_page": (context) => StartPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(title: 'Kick Toad'),
    );
  }
}
