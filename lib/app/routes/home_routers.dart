import 'package:custom_delivery_food/app/modules/home/home_bindings.dart';
import 'package:custom_delivery_food/app/modules/home/home_page.dart';
import 'package:get/get.dart';

class HomeRouters {
  HomeRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    )
  ];
}
