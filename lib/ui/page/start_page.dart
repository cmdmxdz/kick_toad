import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final String tag = "StartPage";

  ///声明变量
  Timer _timer;

  ///记录当前的时间
  int currentTimer = 0;

  /// https://blog.51cto.com/928343994/5195733
  @override
  void initState() {
    super.initState();

    ///循环执行
    ///间隔1秒
    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      ///自增
      ++currentTimer;
      print("currentTimer = $currentTimer\n");

      ///到5秒后停止
      if (currentTimer == 5) {
        _timer.cancel();
        Navigator.pushNamed(context, "menu_page");
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                '欢迎来到打蛤蟆游戏',
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome to Kick Toads',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
