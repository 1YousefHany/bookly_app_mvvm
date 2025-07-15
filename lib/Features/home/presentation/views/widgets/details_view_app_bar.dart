import 'package:flutter/material.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close,size: 32,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined,size: 28,)),
      ],
    );
  }
}