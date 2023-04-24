
import 'package:ecom_group_project/models/products.dart';

class Cart {
  final Product product;
  int quantity;

  Cart({required this.product, required this.quantity});

  double get totalPrice => product.price * quantity;
}
