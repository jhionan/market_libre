import 'package:flutter/material.dart';
import 'package:market_libre/core/theme/theme.dart';
import 'package:market_libre/features/home/view/home.dart';

class Application extends StatelessWidget {
  const Application({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Home(),
    );
  }
}