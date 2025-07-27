import 'package:bookly_app/Features/home_search/presentation/views/widgets/home_search_view_body.dart';
import 'package:flutter/material.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: 
      Scaffold(
        body: HomeSearchViewBody(),
        ),
        );
  }
}
