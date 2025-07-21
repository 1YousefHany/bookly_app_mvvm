import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate_and_buyers_count.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_buttons.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DetailsViewAppBar(),
          cutomDetailsImage(width),
          const SizedBox(height: 16),
          bookName(),
          const SizedBox(height: 3),
          writerName(),
          const SizedBox(height: 3),
          rateAndCount(),
          const DetailsViewButtons(),
          customAlsoLikeText(),
          const SizedBox(height: 10),
          const AlsoLikeListView(),
        ],
      ),
    );
  }

  Row customAlsoLikeText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyleRg14.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  BookRateAndBuyersCount rateAndCount() {
    return const BookRateAndBuyersCount(
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  Text bookName() => const Text('The Jungle Book', style: Styles.textStyleRg30);

  Text writerName() {
    return Text(
      'Rudyard Kipling',
      style: Styles.textStyleSb18.copyWith(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Padding cutomDetailsImage(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .19),
      child: const BookImage(),
    );
  }
}
