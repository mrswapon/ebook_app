import 'package:ebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'views/screen/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: AppColors.kBlackColor,
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

