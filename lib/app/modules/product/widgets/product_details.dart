import 'package:flutter/material.dart';
import 'package:pretest_aksamedia/app/theme/text_style.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

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
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.yellow[700],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'NEW Product Baru',
                  style: TextStyleTheme.small.copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(width: 8.0),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            'Beauty Set by Irvie',
            style: TextStyleTheme.title3.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Irvie group official',
            style: TextStyleTheme.xSmall.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp178.000',
                      style: TextStyleTheme.title3.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Harga Customer',
                      style: TextStyleTheme.xSmall.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp142.400',
                      style: TextStyleTheme.title3.copyWith(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Harga Reseller',
                      style: TextStyleTheme.xSmall.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Komisi Rp35.600 (20%)',
                style: TextStyleTheme.small.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
