import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: customDarkTheme(),
      routerConfig: AppRouter.router,
    );
  }

  ThemeData customDarkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kPrimaryColor,
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: kMontserratFont),
    );
  }
}
