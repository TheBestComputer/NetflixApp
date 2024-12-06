import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page_screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String materialAppTitle = 'Netflix App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: materialAppTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}