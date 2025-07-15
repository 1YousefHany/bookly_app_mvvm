import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.aspectRatio, required this.borderRadius});
  final double aspectRatio;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:aspectRatio,
       child: customIcon());
  }

  
  Container customIcon() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: const DecorationImage(
          image: AssetImage('assets/images/test_image_news.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}