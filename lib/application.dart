import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'features/home/presentation/home.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Home(),
    );
  }
}
