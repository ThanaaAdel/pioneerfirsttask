import 'package:flutter/material.dart';

import 'Features/repository_home/presentation/screens/home_view.dart';
import 'constance.dart';

void main() {
  runApp(const RepositoriesApp());
}

class RepositoriesApp extends StatelessWidget {
  const RepositoriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const HomeView(),
    );
  }
}
