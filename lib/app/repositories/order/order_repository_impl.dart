import 'dart:developer';

import './order_repository.dart';
import 'package:custom_delivery_food/app/models/order.dart';
import 'package:custom_delivery_food/app/core/rest_client/rest_client.dart';
import 'package:custom_delivery_food/app/models/order_pix.dart';

class OrderRepositoryImpl implements OrderRepository {
  final RestClient _restClient;

  OrderRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<OrderPix> createOrder(Order order) async {
    final result = await _restClient.post('/order/', {
      'userId': order.userId,
      'cpf': order.cpf,
      'address': order.address,
      'items': order.items
          .map((shoppingCard) => {
                'quantity': shoppingCard.quantity,
                'productId': shoppingCard.product.id,
              })
          .toList()
    });

    if (result.hasError) {
      log(
        'Erro ao realizar pedido ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current,
      );
      throw RestClientException('Erro ao realizar perdido');
    }

    return OrderPix.fromMap(result.body);
  }
}
