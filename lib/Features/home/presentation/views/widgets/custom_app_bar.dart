
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32,right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.logoPath, height: 24),
          IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
            onPressed: () {},
            icon: const Icon(Icons.search_rounded, size: 38),
          ),
        ],
      ),
    );
  }
}
