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
          productName: 'Product 1',
          productImage: 'abc',
          price: 300,
          productDescription: 'Product Description 1'),
      Product(
          id: 2,
          productName: 'Product 2',
          productImage: 'abd',
          price: 500,
          productDescription: 'Product Description 2'),
      Product(
          id: 3,
          productName: 'Product 3',
          productImage: 'abe',
          price: 700,
          productDescription: 'Product Description 3'),
    ];

    products.assignAll(productResult);
  }
}
