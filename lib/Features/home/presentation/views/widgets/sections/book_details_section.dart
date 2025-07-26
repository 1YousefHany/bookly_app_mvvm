import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate_and_buyers_count.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_buttons.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cutomImage(context),
        const SizedBox(height: 16),
        bookName(),
        const SizedBox(height: 3),
        writerName(),
        const SizedBox(height: 3),
        rateAndCount(),
        const DetailsViewButtons(),
      ],
    );
  }

  Padding cutomImage(context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .19,
      ),
      child: const BookImage(),
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
}
