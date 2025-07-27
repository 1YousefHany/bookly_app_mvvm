
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.logoPath, height: 24),
          homeViewSearchIcon(context),
        ],
      ),
    );
  }

  IconButton homeViewSearchIcon(context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.homeSearchViewKey);
          },
          icon: const Icon(Icons.search_rounded, size: 38),
        );
  }
}
