import 'package:custom_delivery_food/app/modules/auth/login/login_controller.dart';
import 'package:custom_delivery_food/app/repositories/auth/auth_repository.dart';
import 'package:custom_delivery_food/app/repositories/auth/auth_repository_impl.dart';
import 'package:get/get.dart';

class LoginBindins implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        restClient: Get.find(),
      ),
    );

    Get.lazyPut(
      () => LoginController(
        authRepository: Get.find(),
      ),
    );
  }
}
