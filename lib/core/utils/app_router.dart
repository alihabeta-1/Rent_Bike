import 'package:bikes_rental_app/features/auth/presentation/views/login_page.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/sign_up_page.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/verification_page.dart';
import 'package:bikes_rental_app/features/home/presentation/views/home_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/map2_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/map3_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/map_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/search_view.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/onboarding1_view.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/onboarding2_view.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/onboarding3_view.dart';
import 'package:bikes_rental_app/features/payments/presentation/views/my_wallet_view.dart';
import 'package:bikes_rental_app/features/payments/presentation/views/top_up_view.dart';
import 'package:bikes_rental_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/LoginPage',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/Onboarding1View',
        builder: (context, state) =>
            const Onboarding1View(),
      ),
      GoRoute(
        path: '/Onboarding2View',
        builder: (context, state) =>
            const Onboarding2View(),
      ),
      GoRoute(
        path: '/Onboarding3View',
        builder: (context, state) =>
            const Onboarding3View(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/SignUpPage',
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/VerificationPage',
        builder: (context, state) =>
            const VerificationPage(),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/MapView',
        builder: (context, state) => MapView(),
      ),
      GoRoute(
        path: '/Map2View',
        builder: (context, state) => Map2View(),
      ),
      GoRoute(
        path: '/Map3View',
        builder: (context, state) => Map3View(),
      ),
      GoRoute(
        path: '/MyWalletView',
        builder: (context, state) => MyWalletView(),
      ),
      GoRoute(
        path: '/TopUpView',
        builder: (context, state) => TopUpView(),
      ),
    ],
  );
}
