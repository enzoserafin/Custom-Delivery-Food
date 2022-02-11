import 'package:custom_delivery_food/app/models/order.dart';
import 'package:custom_delivery_food/app/models/order_pix.dart';

abstract class OrderRepository {
  Future<OrderPix> createOrder(Order order);
}
