import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_text.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: appBar_horizontalList_bestSellerText(context),
          ),
          const SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column appBar_horizontalList_bestSellerText(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         HomeViewAppBar(),
        FeaturedBooksListView(),
         BestSellerText(text: 'Best Seller'),
      ],
    );
  }
}
