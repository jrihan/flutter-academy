import 'package:academy/layers/presentation/screens/create_screen.dart';
import 'package:academy/layers/presentation/screens/details_screen.dart';
import 'package:academy/layers/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => const DetailsScreen(),
    ),
    GoRoute(
      path: '/create',
      builder: (context, state) => const CreateScreen(),
    )
  ],
);
