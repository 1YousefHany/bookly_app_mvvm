import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/sections/also_like_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/sections/book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DetailsViewAppBar(),
                BookDetailsSection(),
                AlsoLikeSection(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
