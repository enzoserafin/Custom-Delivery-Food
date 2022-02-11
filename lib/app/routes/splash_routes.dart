import 'package:custom_delivery_food/app/modules/splash/splash_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:custom_delivery_food/app/modules/splash/splash_page.dart';

class SplashRoutes {
  SplashRoutes._();

  static final routers = <GetPage>[
    GetPage(
      name: '/',
      binding: SplashBindings(),
      page: () => const SplasPage(),
    )
  ];
}
