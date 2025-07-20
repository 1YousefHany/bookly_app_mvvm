import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate_and_buyers_count.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_text_button.dart';
import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 6,
        children: [
          const DetailsViewAppBar(),
          cutomDetailsImage(width),
          const SizedBox(height: 16),
          bookName(),
          writerName(),
          rateAndCount(),
          const SizedBox(height: 24),
          const DetailsViewButtons(),
        ],
      ),
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

class DetailsViewButtons extends StatelessWidget {
  const DetailsViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: leftButton()),
        Expanded(child: rightButton()),
      ],
    );
  }

  CustomTextButton leftButton() {
    return const CustomTextButton(
      backgroundColor: Colors.white,
      text: '19.99\$',
      textStyle: Styles.textStyleRg20,
      textColor: Colors.black,
      topLeft: 16,
      bottomLeft: 16,
    );
  }

  CustomTextButton rightButton() {
    return const CustomTextButton(
      backgroundColor: Colors.orange,
      text: 'Free preview',
      textStyle: Styles.textStyleSb16,
      textColor: Colors.white,
      topRight: 16,
      bottomRight: 16,
    );
  }
}
