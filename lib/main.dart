import 'package:flutter/material.dart';
import 'package:navigation/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: const HomePage(),
  ));
}