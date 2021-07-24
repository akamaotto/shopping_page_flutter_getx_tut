import 'package:get/get.dart';
import 'package:shopcart/models/product.dart';

class CartController extends GetxController {
  List<Product> cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
