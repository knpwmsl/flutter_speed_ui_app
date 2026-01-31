import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';

void main() {
  runApp(
    flutter_speed_ui_app()
  );
}

class flutter_speed_ui_app extends StatelessWidget {
  const flutter_speed_ui_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
    );
  }
}