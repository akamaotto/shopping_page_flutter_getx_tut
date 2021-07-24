import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopcart/controllers/cart_controller.dart';
import 'package:shopcart/controllers/shopping_controller.dart';

import 'widgets/product_card.dart';

class ShoppinPage extends StatelessWidget {
  ShoppinPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0, bottom: 15),
              child: Text('Our Products',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        price: controller.products[index].price.toString(),
                        productDescription: controller
                            .products[index].productDescription
                            .toString(),
                        productName:
                            controller.products[index].productName.toString(),
                        onPressed: () {
                          cartController.addToCart(controller.products[index]);
                        },
                      );
                    });
              }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Total Price",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            GetX<CartController>(
              builder: (controller) {
                return Text(
                  "\$${controller.totalPrice.toInt()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text(controller.cartItems.length.toString());
          },
        ),
        icon: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
