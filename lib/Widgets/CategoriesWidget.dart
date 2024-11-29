import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Fungsi untuk menentukan ukuran gambar
    double getImageSize() {
      if (screenWidth < 600) return 60; // Mobile
      if (screenWidth < 900) return 80; // Tablet
      return 100; // Desktop
    }

    // Fungsi untuk menentukan padding horizontal antar item
    double getHorizontalPadding() {
      if (screenWidth < 600) return 10; // Mobile
      if (screenWidth < 900) return 20; // Tablet
      return 30; // Desktop
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            // Item pertama
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalPadding()),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  "images/drink.jpeg",
                  width: getImageSize(),
                  height: getImageSize(),
                ),
              ),
            ),

            // Item kedua
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalPadding()),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  "images/burger.jpeg",
                  width: getImageSize(),
                  height: getImageSize(),
                ),
              ),
            ),

            // Item ketiga
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalPadding()),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  "images/pizza.jpeg",
                  width: getImageSize(),
                  height: getImageSize(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
