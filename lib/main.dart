import 'package:flutter/material.dart';
import 'package:nursy/screens/FirstPage.dart';

void main() {
  runApp(Nursy());
}

class Nursy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
