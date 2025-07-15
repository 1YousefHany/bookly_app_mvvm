import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'constants.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customDarkTheme(),

      home: const SplashView(),
    );
  }

  ThemeData customDarkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kPrimaryColor,
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: kMontserratFont),
    );
  }
}
