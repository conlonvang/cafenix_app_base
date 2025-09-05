part of 'routes.package.dart';

RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

GoRouter routerGoRoutes = GoRouter(
  initialLocation: RouteConfigName.DEFAULT,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      builder: (context, state, child) {
        return child;
      },
      routes: <GoRoute>[
        GoRoute(
          path: RouteConfigName.DEFAULT,
          builder:
              (_, GoRouterState state) =>
                  const RouteAwareWidget(child: HomePage()),
        ),
      
      ],
    ),
  ],
);
