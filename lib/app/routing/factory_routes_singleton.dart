import 'package:cafenix_app/app/routing/routes.package.dart';
import 'package:go_router/go_router.dart';

class FactoryNavRoutesSingleton {
  static final FactoryNavRoutesSingleton _instance = FactoryNavRoutesSingleton._internal();

  factory FactoryNavRoutesSingleton() {
    return _instance;
  }

  FactoryNavRoutesSingleton._internal();

  final GoRouter _items = routerGoRoutes;
  GoRouter get items => _items;

  void offAll() {
    // LocalStorage.clear();
    // TrangThaiDiemDanhRepo.of().destroy();
    // HocKyDiemRepo.of().destroy();
    // HocKyLichThiRepo.of().destroy();
    // HocKyThoiKhoaBieuRepo.of().destroy();
    // final _navigatorKey = getIt<NavigationService>().navigatorKey;
    //
    // _navigatorKey.currentContext!.go(RouteConfigName.DANG_NHAP_VIEW);
  }
}
