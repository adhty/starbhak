import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  // Simpan data produk dalam list
  List<Map<String, dynamic>> products = [
    {'id': 1, 'name': 'Burger', 'price': 80000, 'image': 'images/burger.jpeg'},
    {'id': 2, 'name': 'Pizza', 'price': 100000, 'image': 'images/pizza.jpeg'},
    {'id': 3, 'name': 'spaghetti', 'price': 50000, 'image': 'images/spaghetti.jpeg'},
  ];

  // Fungsi untuk menghapus produk
  void deleteProduct(int productId) {
    setState(() {
      // Hapus produk berdasarkan ID
      products.removeWhere((product) => product['id'] == productId);
    });
    // Tambahkan logika untuk menghapus dari database jika diperlukan
    print("Product with ID $productId deleted");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Tentukan breakpoint untuk responsivitas
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 10 : isTablet ? 20 : 40,
          ), // Responsif Padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              // Button "ADD"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigasi ke halaman tambah data
                      print("Navigate to Add Data");
                    },
                    icon: Icon(Icons.add),
                    label: Text("ADD"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 16 : 24,
                        vertical: isMobile ? 8 : 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20),

              // Header Row (Poto, Nama Produk, Harga, Aksi)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Poto",
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Nama Produk",
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Aksi",
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.black),

              // Product Item List
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length, // Jumlah produk dalam list
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: double.infinity,
                      height: isMobile ? 100 : 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
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
                          // Image Container
                          Container(
                            margin: EdgeInsets.all(isMobile ? 8 : 12),
                            child: Image.asset(
                              product['image'], // Gambar produk
                              height: isMobile ? 80 : 100,
                              width: isMobile ? 80 : 100,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // Product Info
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    product['name'], // Nama produk
                                    style: TextStyle(
                                      fontSize: isMobile ? 16 : 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Rp. ${product['price']}', // Harga produk
                                    style: TextStyle(fontSize: isMobile ? 14 : 16),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Action Buttons
                          IconButton(
                            onPressed: () {
                              // Panggil fungsi hapus
                              deleteProduct(product['id']);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: isMobile ? 20 : 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
