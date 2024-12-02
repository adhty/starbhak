import 'package:flutter/material.dart';
import 'package:starbahk_mart/Pages/HomePage.dart';
import 'package:starbahk_mart/Pages/CartPage.dart';
import 'package:starbahk_mart/Pages/AddPage.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbak Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navbarwidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Navbarwidget extends StatefulWidget {
  @override
  _NavbarwidgetState createState() => _NavbarwidgetState();
}

class _NavbarwidgetState extends State<Navbarwidget> {
  int _currentIndex = 0;

    final List<Widget> _children = [
      Homepage(),
      Cartpage(),
      Addpage(),
    ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar untuk responsivitas
    final screenWidth = MediaQuery.of(context).size.width;

    // Menentukan ukuran ikon berdasarkan lebar layar
    double getIconSize() {
      if (screenWidth < 600) return 24; // Mobile
      if (screenWidth < 900) return 30; // Tablet
      return 36; // Desktop
    }

    // Menentukan ukuran font label
    double getFontSize() {
      if (screenWidth < 600) return 12; // Mobile
      if (screenWidth < 900) return 14; // Tablet
      return 16; // Desktop
    }

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        selectedItemColor: Colors.blue, // Warna untuk item yang dipilih
        unselectedItemColor: Colors.grey, // Warna untuk item yang tidak dipilih
        showUnselectedLabels: true, // Menampilkan label untuk item yang tidak dipilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: getIconSize()),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: getIconSize()),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add, size: getIconSize()),
            label: 'Pesanan',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontSize: getFontSize(),
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: getFontSize(),
        ),
      ),
    );
  }
}
