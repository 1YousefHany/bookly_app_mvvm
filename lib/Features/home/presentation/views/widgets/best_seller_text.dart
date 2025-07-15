import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(text,style: Styles.textStyleSb18,),
    );
  }
}