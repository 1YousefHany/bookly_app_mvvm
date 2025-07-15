import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_texts.dart';
import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16,bottom: 22),
      child: SizedBox(
        height:  MediaQuery.of(context).size.width * .3,
        child:  Row(
          children: [
            itemImage(),
          const  SizedBox(width: 30),
          const  BestSellerItemTexts(),
            
          ],
        ),
      ),
    );
  }

  SizedBox itemImage() {
    return const SizedBox(
                  height: 145,
            child: BookImage(aspectRatio: 2 / 3, borderRadius: 8));
  }
}
