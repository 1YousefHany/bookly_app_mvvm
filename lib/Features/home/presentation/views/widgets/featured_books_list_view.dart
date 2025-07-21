import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
    this.verticalPaddingForHoleList = 32,
  required this.listHeight ,
    this.rightPaddingBtweenItems = 16,
  });

  final double verticalPaddingForHoleList, listHeight, rightPaddingBtweenItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPaddingForHoleList),
      child: SizedBox(
        height: listHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: rightPaddingBtweenItems),
              child: const BookImage(),
            );
          },
        ),
      ),
    );
  }
}
