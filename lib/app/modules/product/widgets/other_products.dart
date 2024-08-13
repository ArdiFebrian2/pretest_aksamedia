import 'package:flutter/material.dart';
import 'package:pretest_aksamedia/app/theme/text_style.dart';

class OtherProducts extends StatelessWidget {
  const OtherProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(context, 'Produk lain dari Irvie group official'),
          _buildProductGrid(context),
          const SizedBox(height: 16.0),
          _buildSectionTitle(context, 'Produk Serupa'),
          _buildProductGrid(context),
          const SizedBox(height: 16.0),
          _buildBottomButtons(context),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyleTheme.small.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2, // Adjust the number of products
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio:
              0.68, // Adjusted aspect ratio to allow more vertical space
        ),
        itemBuilder: (context, index) {
          return _buildProductCard(context);
        },
      ),
    );
  }

  Widget _buildProductCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/product.png', // Placeholder for product images
                height: 120.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    'New',
                    style: TextStyleTheme.xSmall.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beauty Set by Irvie',
                  style: TextStyleTheme.xSmall
                      .copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Harga reseller',
                  style: TextStyleTheme.xSmall.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Rp142.400',
                  style: TextStyleTheme.xSmall.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Text(
                        '30% Komisi',
                        style: TextStyleTheme.xTiny.copyWith(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '99+ pcs',
                      style: TextStyleTheme.xTiny.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // Show Bottom Sheet for sharing options
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Bagikan Produk',
                                    style: TextStyleTheme.small.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close),
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text(
                                  'Teks dan Link',
                                  style: TextStyleTheme.small,
                                ),
                                onTap: () {
                                  // Handle Teks dan Link sharing
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text(
                                  'Gambar',
                                  style: TextStyleTheme.small,
                                ),
                                onTap: () {
                                  // Handle Gambar sharing
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 38.0),
                    padding: EdgeInsets.zero,
                    elevation: 0,
                  ).copyWith(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Bagikan Produk',
                    style: TextStyleTheme.xTiny,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 250, // Adjust the width as needed
            child: OutlinedButton(
              onPressed: () {
                // Handle adding to store
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.black, width: 1.5),
                minimumSize: const Size(
                    double.infinity, 50), // Set width to fill container
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Border radius
                ),
              ),
              child: Text(
                'Tambahkan ke toko',
                style:
                    TextStyleTheme.xSmall.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle adding to cart
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              minimumSize: const Size(50, 50), // Adjusted button size
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Border radius
              ),
            ),
            child: Center(
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
