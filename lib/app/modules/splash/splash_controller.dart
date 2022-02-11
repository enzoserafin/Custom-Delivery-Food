import 'package:custom_delivery_food/app/core/services/auth_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void checklogged() {
    Get.putAsync(() => AuthService().init());
  }
}
