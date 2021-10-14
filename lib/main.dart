import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mywallet_ui/dashborad.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Bank Expenses',
      debugShowCheckedModeBanner: false,
      home: DashBoradPage(),
    );
  }
}
