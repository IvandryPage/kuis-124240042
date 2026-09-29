import 'package:flutter/material.dart';
import 'package:kuis_mobile_124240042/pages/login.dart';
import 'package:kuis_mobile_124240042/pages/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
  }
}
