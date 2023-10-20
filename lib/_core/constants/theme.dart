import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(appBarTheme: appBarTheme(), fontFamily: "NanumSquare");
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    centerTitle: true,
    backgroundColor: Colors.black12,
    elevation: 0,
  );
}
