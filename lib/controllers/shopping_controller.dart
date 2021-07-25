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
          productImage: 'img1',
          price: 300,
          productDescription: 'Slice and take every 4pm'),
      Product(
          id: 2,
          productName: 'Apples',
          productImage: 'img2',
          price: 500,
          productDescription: 'Eat in the evening while reading'),
      Product(
          id: 3,
          productName: 'Limes',
          productImage: 'img3',
          price: 700,
          productDescription: 'Squeeze in your tea to make a warm tea limeade'),
      Product(
          id: 4,
          productName: 'Dates',
          productImage: 'img3',
          price: 900,
          productDescription: 'Squeeze in your tea to make a warm tea limeade'),
      Product(
          id: 4,
          productName: 'Bananas',
          productImage: 'img4',
          price: 900,
          productDescription:
              'I heard it helps with sperm count, but I\'ll need to check'),
    ];

    products.assignAll(productResult);
  }
}
