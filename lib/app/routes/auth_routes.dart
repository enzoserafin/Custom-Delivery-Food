import 'package:custom_delivery_food/app/modules/auth/login/login_bindins.dart';
import 'package:custom_delivery_food/app/modules/auth/register/register_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:custom_delivery_food/app/modules/auth/login/login_page.dart';
import 'package:custom_delivery_food/app/modules/auth/register/register_page.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routers = <GetPage>[
    GetPage(
      name: '/auth/login',
      binding: LoginBindins(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: '/auth/register',
      binding: RegisterBindings(),
      page: () => const RegisterPage(),
    ),
  ];
}
