import 'dart:io';

import 'package:cafenix_app/app/routing/factory_routes_singleton.dart';
import 'package:cafenix_app/app/routing/navigation.service.dart';
import 'package:cafenix_app/app/services/register/register_adapter.dart';
import 'package:cafenix_app/core/constants/db_hive.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/services/network/interceptors.dart';
import 'core/overrides/my_http_overrides.dart';

Future<void> initApp(Interceptor? interceptor) async {
  await Hive.initFlutter();
  registerAdapterHive();
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  NavigationService().setupNavigator();
  // if (kReleaseMode) {
  //   await dotenv.load(fileName: "assets/.env.production");
  // } else {
  //   await dotenv.load(fileName: "assets/.env.development");
  // }
  await Hive.openBox(DbHive.local);

  // BaseApiDataSource.instance(interceptor ?? HttpInterceptors());
}

Future<void> main()  async{
  await initApp(HttpInterceptors());
  runApp(const CafenixApp());
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class CafenixApp extends StatefulWidget {
  const CafenixApp({super.key});

  @override
  State<CafenixApp> createState() => _CafenixAppState();
}

class _CafenixAppState extends State<CafenixApp> {
   @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
     final router = FactoryNavRoutesSingleton().items;
    return MaterialApp.router(
      builder: EasyLoading.init(),
       debugShowCheckedModeBanner: false,
      title: 'My Cafenix',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
         scaffoldBackgroundColor: Color(0xFFF8F8F8),
         useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}




