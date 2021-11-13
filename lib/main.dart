import 'package:covid_19_appui/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_appui/screens/home.dart';
import 'package:covid_19_appui/screens/info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: Home(),
    );
  }
}
