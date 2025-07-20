import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate_and_buyers_count.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItemTexts extends StatelessWidget {
  const BestSellerItemTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 3,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bookName(context),
          writerName(),
          priceRateCount(context),
        ],
      ),
    );
  }

  

  SizedBox bookName(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Text(
        'Harry Potter and the Golbet of Fire',
        style: Styles.textStyleRg20.copyWith(
          fontFamily: kGTSectraFine,
          height: 1.1,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Text writerName() {
    return const Text('J.K. Rowling', style: Styles.textStyleRg14);
  }

   priceRateCount(context) {
    return Expanded(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [priceText(context), const BookRateAndBuyersCount()],
        ),
    );
  }

  Row priceText(context) {
    return Row(
      children: [
        Text(
          '19.99',
          style: Styles.textStyleRg20.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          ' €',
          style: Styles.textStyleRg14.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  
 
}


