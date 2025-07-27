import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/home_search/presentation/views/home_search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String homeViewKey = '/homeView';
  static String homeSearchViewKey = '/HomeSearchView';
  static String bookDetailsViewKey = '/BookDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: homeViewKey, builder: (context, state) => const HomeView()),
      GoRoute(
        path: homeSearchViewKey,
        builder: (context, state) => const HomeSearchView(),
      ),
      GoRoute(
        path: bookDetailsViewKey,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}


