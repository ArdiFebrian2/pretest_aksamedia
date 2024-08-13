import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 350.0,
          child: Image.asset(
            'assets/images/product.png', // Your product image
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 20,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ],
    );
  }
}
