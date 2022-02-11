import 'package:custom_delivery_food/app/core/services/shopping_card_service.dart';
import 'package:get/get.dart';
import 'package:custom_delivery_food/app/core/rest_client/rest_client.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );

    Get.lazyPut(() => ShoppingCardService());
  }
}
