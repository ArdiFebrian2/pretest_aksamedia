import 'package:flutter/material.dart';
import 'package:pretest_aksamedia/app/theme/text_style.dart';

class SizeColorOptions extends StatelessWidget {
  const SizeColorOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Ukuran',
            style: TextStyleTheme.small.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              ChoiceChip(
                label: Text(
                  'Paket 1',
                  style: TextStyleTheme.xSmall.copyWith(color: Colors.black),
                ),
                selected: true,
                selectedColor: Colors.grey[200],
                onSelected: (selected) {
                  // Handle selection
                },
              ),
              const SizedBox(width: 8.0),
              ChoiceChip(
                label: Text(
                  'Paket 2',
                  style: TextStyleTheme.xSmall.copyWith(color: Colors.black),
                ),
                selected: false,
                selectedColor: Colors.grey[200],
                onSelected: (selected) {
                  // Handle selection
                },
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            'Warna',
            style: TextStyleTheme.small.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              ChoiceChip(
                label: Text(
                  'Warna 1',
                  style: TextStyleTheme.xSmall.copyWith(color: Colors.black),
                ),
                selected: true,
                selectedColor: Colors.grey[200],
                onSelected: (selected) {
                  // Handle selection
                },
              ),
              const SizedBox(width: 8.0),
              ChoiceChip(
                label: Text(
                  'Warna 2',
                  style: TextStyleTheme.xSmall.copyWith(color: Colors.black),
                ),
                selected: false,
                selectedColor: Colors.grey[200],
                onSelected: (selected) {
                  // Handle selection
                },
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            'Stok : 99+ pcs',
            style: TextStyleTheme.xSmall.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
