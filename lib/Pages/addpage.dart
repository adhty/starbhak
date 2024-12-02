import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:starbahk_mart/Widgets/AppBarWidget.dart';
import 'package:starbahk_mart/Widgets/AppBarWidget2.dart';
import 'adddata.dart';

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          // Button Add
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarwidget(),

                  // Add Data
                  Row(
                    children: [
                      ElevatedButton(
                        child: Row(children: [
                          Text(
                            'ADD',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: screenWidth * 0.05,
                          ),
                        ]),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Adddata()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenHeight * 0.01,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Photo",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Nama Produk",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Aksi",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black),

                  // Kotak Produk
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'images/burger.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 100.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: screenWidth * 0.05,
                                      ),
                                      onPressed: () {
                                        // Logika hapus item
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus item ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Batal"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Hapus"),
                                                  onPressed: () {
                                                    // Tambahkan logika penghapusan di sini
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'images/es krim.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Es cream ',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 30.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: screenWidth * 0.05,
                                      ),
                                      onPressed: () {
                                        // Logika hapus item
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus item ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Batal"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Hapus"),
                                                  onPressed: () {
                                                    // Tambahkan logika penghapusan di sini
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'images/pizza.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Hots Pizza',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 135.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: screenWidth * 0.05,
                                      ),
                                      onPressed: () {
                                        // Logika hapus item
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus item ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Batal"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Hapus"),
                                                  onPressed: () {
                                                    // Tambahkan logika penghapusan di sini
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'images/spaghetti.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Hots Spaghetti',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 85.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: screenWidth * 0.05,
                                      ),
                                      onPressed: () {
                                        // Logika hapus item
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus item ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Batal"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Hapus"),
                                                  onPressed: () {
                                                    // Tambahkan logika penghapusan di sini
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),

                  Divider(color: Colors.black),

                  // Tambahkan Kotak Produk lainnya jika diperlukan
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
