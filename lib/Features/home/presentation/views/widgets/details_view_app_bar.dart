import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [closeIcon(context), cartIcon()],
    );
  }

  IconButton closeIcon(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(Icons.close, size: 32),
    );
  }

  IconButton cartIcon() => IconButton(
    onPressed: () {},
    icon: const Icon(Icons.shopping_cart_outlined, size: 28),
  );
}
