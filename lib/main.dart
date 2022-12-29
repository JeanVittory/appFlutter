import 'package:flutter/material.dart';
import "./screens/restaurants.screens.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: "Restaurant App",
        debugShowCheckedModeBanner: false,
        home: Restaurants(),
        theme: ThemeData(
            primaryColor: const Color(0xFFF9FAFA),
            highlightColor: const Color(0XFFFB857F),
            secondaryHeaderColor: const Color.fromARGB(255, 58, 58, 58),
            textTheme: const TextTheme(
                headline1: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF403C34)),
                headline2: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF191919)),
                bodyText1: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w400),
                bodyText2: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(161, 158, 158, 158),
                    fontWeight: FontWeight.w500))),
      ),
    );
  }
}
