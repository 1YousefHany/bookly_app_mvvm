import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, this.aspectRatio = .66, this.borderRadius = 16});
  final double aspectRatio;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.bookDetailsViewKey),
      child: AspectRatio(
      aspectRatio: aspectRatio,
      child: customImage(),
      ),
    );
  }

  Container customImage() {
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
