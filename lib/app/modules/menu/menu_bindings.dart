import 'package:custom_delivery_food/app/modules/menu/menu_controller.dart';
import 'package:custom_delivery_food/app/repositories/products/product_repository.dart';
import 'package:custom_delivery_food/app/repositories/products/product_repository_impl.dart';
import 'package:get/get.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(
        () => ProductRepositoryImpl(restClient: Get.find()));
    Get.put(MenuController(productRepository: Get.find()));
  }
}
