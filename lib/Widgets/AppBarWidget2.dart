import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Menentukan ukuran padding dan ikon berdasarkan ukuran layar
    double getPadding() {
      if (screenWidth < 600) return 10; // Mobile
      if (screenWidth < 900) return 12; // Tablet
      return 15; // Desktop
    }

    double getIconSize() {
      if (screenWidth < 600) return 24; // Mobile
      if (screenWidth < 900) return 28; // Tablet
      return 32; // Desktop
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getPadding(),
        horizontal: getPadding(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menu Icon
          InkWell(
            onTap: () {
              // Tambahkan logika untuk menu
            },
            child: Container(
              padding: EdgeInsets.all(getPadding()),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.bars,
                size: getIconSize(),
              ),
            ),
          ),

          // Profile Icon
          InkWell(
            onTap: () {
              // Tambahkan logika untuk profil
            },
            child: Container(
              padding: EdgeInsets.all(getPadding()),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.person,
                size: getIconSize(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
