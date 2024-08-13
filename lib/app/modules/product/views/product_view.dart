import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';
// import '../widgets/add_to_cart_button.dart';
import '../widgets/other_products.dart';
import '../widgets/product_description.dart';
import '../widgets/product_details.dart';
import '../widgets/product_image.dart';
import '../widgets/size_color_options.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ProductImage(),
            SizedBox(height: 16.0),
            ProductDetails(),
            SizedBox(height: 16.0),
            SizeColorOptions(),
            SizedBox(height: 16.0),
            ProductDescription(),
            SizedBox(height: 16.0),
            OtherProducts(),
            // SizedBox(height: 16.0),
            // AddToCartButton(),
          ],
        ),
      ),
    );
  }
}
