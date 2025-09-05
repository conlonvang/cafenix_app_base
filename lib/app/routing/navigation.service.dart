import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/di/injection.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  // final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  BuildContext get navigatorContext => navigatorKey.currentState!.context;

  void setupNavigator() {
    getIt.registerLazySingleton(() => NavigationService());
  }

  Future<void> toNamed(
    String page, {
    Map<String, String>? parameters,
  }) async {
    if (parameters != null) {
      final uri = Uri(path: page, queryParameters: parameters);
      page = uri.toString();
    }
    await Future.delayed(const Duration(seconds: 0), () => navigatorContext.push(page));
  }
}
