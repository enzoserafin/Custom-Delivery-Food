import 'package:get/get.dart';
import 'package:custom_delivery_food/app/repositories/order/order_repository.dart';
import 'package:custom_delivery_food/app/repositories/order/order_repository_impl.dart';
import 'package:custom_delivery_food/app/modules/order/shopping_card/shopping_card_controller.dart';

class ShoppingCardBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderRepository>(
        () => OrderRepositoryImpl(restClient: Get.find()));

    Get.put(ShoppingCardController(
      authService: Get.find(),
      shoppingCardService: Get.find(),
      orderRepository: Get.find(),
    ));
  }
}
