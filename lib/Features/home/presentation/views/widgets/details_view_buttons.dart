import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class DetailsViewButtons extends StatelessWidget {
  const DetailsViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Row(
        children: [
          Expanded(child: leftButton()),
          Expanded(child: rightButton()),
        ],
      ),
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
