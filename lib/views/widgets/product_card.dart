import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productName,
    required this.price,
    required this.productDescription,
    required this.onPressed,
  }) : super(key: key);

  final String productName;
  final String price;
  final String productDescription;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\$$price",
                    style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    productDescription,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(
                      'Add to Cart',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
