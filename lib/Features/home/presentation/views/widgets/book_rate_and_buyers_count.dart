import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRateAndBuyersCount extends StatelessWidget {
  const BookRateAndBuyersCount({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star_rounded, color: Colors.amberAccent, size: 24),
        Text(
          '4.8',
          style: Styles.textStyleSb16.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          ' (2390)',
          style: Styles.textStyleRg14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
