import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_viewB.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_text.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                BestSellerText(text: 'Best Seller'),
              ],
            ),
          ),
          SliverFillRemaining(child: BestSellerListViewB()),
        ],
      ),
    );
  }
}
