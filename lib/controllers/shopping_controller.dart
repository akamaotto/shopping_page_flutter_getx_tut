import 'package:get/get.dart';
import 'package:shopcart/models/product.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    var productResult = [
      Product(
          id: 1,
          productName: 'Oranges',
          productImage: 'Slice and take every 4pm',
          price: 300,
          productDescription: 'Product Description 1'),
      Product(
          id: 2,
          productName: 'Apples',
          productImage: 'Eat in the evening while reading',
          price: 500,
          productDescription: 'Product Description 2'),
      Product(
          id: 3,
          productName: 'Limes',
          productImage: 'Squeeze in your tea to make a warm tea limeade',
          price: 700,
          productDescription: 'Product Description 3'),
    ];

    products.assignAll(productResult);
  }
}
