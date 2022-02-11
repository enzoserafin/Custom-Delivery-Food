import 'package:custom_delivery_food/app/modules/order/pix/pix_page.dart';
import 'package:get/get.dart';
import 'package:custom_delivery_food/app/modules/order/finished/finished_page.dart';

class OrdersRoutes {
  OrdersRoutes._();

  static final routers = <GetPage>[
    GetPage(
      name: '/orders/finished',
      page: () => FinishedPage(),
    ),
    GetPage(
      name: '/orders/pix',
      page: () => PixPage(),
    ),
  ];
}
