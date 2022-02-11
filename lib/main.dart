import 'package:custom_delivery_food/app/core/bindings/application_binding.dart';
import 'package:custom_delivery_food/app/core/ui/custom_ui.dart';
import 'package:custom_delivery_food/app/routes/auth_routes.dart';
import 'package:custom_delivery_food/app/routes/home_routers.dart';
import 'package:custom_delivery_food/app/routes/orders_routes.dart';
import 'package:custom_delivery_food/app/routes/product_routers.dart';
import 'package:custom_delivery_food/app/routes/splash_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const CustomDeliveryFoodApp());
}

class CustomDeliveryFoodApp extends StatelessWidget {
  const CustomDeliveryFoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Custom Delivery Food',
      theme: CustomUI.theme,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...SplashRoutes.routers,
        ...AuthRoutes.routers,
        ...HomeRouters.routers,
        ...ProductRouters.routers,
        ...OrdersRoutes.routers,
      ],
    );
  }
}
