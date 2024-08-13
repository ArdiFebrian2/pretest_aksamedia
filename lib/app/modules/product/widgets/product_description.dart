import 'package:flutter/material.dart';
import 'package:pretest_aksamedia/app/theme/text_style.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi',
            style: TextStyleTheme.small.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            '*New Material*\n'
            'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
            '\n'
            '*High Quality*\n'
            'Dengan jahitan yang rapi dan bahan yang berkualitas membuat pakaian '
            'lebih tahan lama.\n',
            style: TextStyleTheme.xSmall.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
