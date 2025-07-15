import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidTextAnimation;
  late Animation<Offset> slidImageAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToHomeAfterSplashing();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [splashImage(), splashReadText()],
    );
  }

  AnimatedBuilder splashImage() {
    return AnimatedBuilder(
      animation: slidImageAnimation,
      builder: (context, child) => SlideTransition(
        position: slidImageAnimation,
        child: Image.asset(Assets.logoPath),
      ),
    );
  }

  AnimatedBuilder splashReadText() {
    return AnimatedBuilder(
      animation: slidTextAnimation,
      builder: (context, _) => SlideTransition(
        position: slidTextAnimation,
        child: const Text('Read Free Books', textAlign: TextAlign.center),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = customAnimationController();
    slidImageAnimation = createTweenForImage();
    slidTextAnimation = createTweenForText();
    animationController.forward();
  }

  AnimationController customAnimationController() {
    return AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
  }

  Animation<Offset> createTweenForImage() {
    return Tween<Offset>(
      begin: const Offset(0, -2),
      end: const Offset(0, 0),
    ).animate(animationController);
  }

  Animation<Offset> createTweenForText() {
    return Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(animationController);
  }

  Future<Null> navigateToHomeAfterSplashing() {
    return animationController.forward().then((value) {
      navigateToHome();
    });
  }

 void navigateToHome() {
          GoRouter.of(context).push(AppRouter.homeViewKey);
  }
}
