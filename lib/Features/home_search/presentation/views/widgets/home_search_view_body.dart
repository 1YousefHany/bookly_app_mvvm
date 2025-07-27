import 'package:bookly_app/Features/home_search/presentation/views/widgets/home_search_result_list.dart';
import 'package:bookly_app/Features/home_search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeSearchViewBody extends StatelessWidget {
  const HomeSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 16),
          SearchTextField(),
          SizedBox(height: 32),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
