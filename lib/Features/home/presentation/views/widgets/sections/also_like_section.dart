import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AlsoLikeSection extends StatelessWidget {
  const AlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
customAlsoLikeText(),
                const SizedBox(height: 10),
                const AlsoLikeListView(),
      ],
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
}