import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretest_aksamedia/app/modules/home/controllers/home_controller.dart';
import 'package:pretest_aksamedia/app/modules/product/views/product_view.dart'; // Ensure the correct import
import 'package:pretest_aksamedia/app/theme/text_style.dart'; // Import your TextStyleTheme

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              // Slide 1
              OnboardingPage(
                image:
                    'assets/images/background1.png', // Replace with your image path
                title: 'Gratis Materi Belajar Menjadi Seller Handal',
                description:
                    'Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
                buttonText: 'Selanjutnya',
                onButtonPressed: () {
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              // Slide 2
              OnboardingPage(
                image:
                    'assets/images/background2.png', // Replace with your image path
                title: 'Jualan Lebih Mudah dengan Aplikasi Kami',
                description:
                    'Gunakan fitur-fitur canggih dari Tokorame untuk meningkatkan penjualan kamu.',
                buttonText: 'Selanjutnya',
                onButtonPressed: () {
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              // Slide 3
              OnboardingPage(
                image:
                    'assets/images/background3.png', // Replace with your image path
                title: 'Dapatkan Dukungan Langsung dari Ahlinya',
                description:
                    'Kami siap membantu kamu setiap saat dengan layanan pelanggan yang handal.',
                buttonText: 'Mulai Sekarang',
                onButtonPressed: () {
                  Get.to(() => ProductView()); // Navigate to the ProductView
                },
              ),
            ],
          ),
          // Page Indicator
          Positioned(
            bottom: 300, // Adjusted position for better visibility
            left: 50,
            right: 50,
            child: Center(
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 8.0,
                        width:
                            controller.currentPage.value == index ? 24.0 : 8.0,
                        decoration: BoxDecoration(
                          color: controller.currentPage.value == index
                              ? Colors.white
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      );
                    }),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const OnboardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        // Content
        Positioned(
          height: 292,
          width: 400,
          top: 520,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyleTheme.title3, // Use the title3 style
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: TextStyleTheme.xSmall, // Use the regular style
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: onButtonPressed,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 32),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Text(
                      buttonText,
                      style: TextStyleTheme.xTiny,
                      // Use the regular style
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
