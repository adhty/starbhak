import 'package:flutter/material.dart';
import 'package:starbahk_mart/Pages/AddData.dart';
import 'package:starbahk_mart/Widgets/AppBarWidget.dart';
import 'package:starbahk_mart/widgets/AppBarWidget2.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CardpageState();
}  

class _CardpageState extends State<Cartpage> {
  Future<List<dynamic>> fetchData() async {
    final response = await supabase.from('starbhak_mart').select('*');
    return response as List<dynamic>;
  }

  Future<void> deleteData(int id) async {
    await supabase.from('starbhak_mart').delete().eq('id', id);
    setState(() {}); // Refresh the UI
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarwidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.02,
                      left: screenWidth * 0.02,
                      bottom: screenHeight * 0.01,
                    ),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                        fontSize: screenWidth * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  FutureBuilder<List<dynamic>>(
                    future: fetchData(),
                    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Center(child: Text('No data found'));
                      } else {
                        final List<dynamic> data = snapshot.data!;
                        return Column(
                          children: data.map((item) {
                            return Padding(
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
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 0.2,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                item['name'] ?? 'No name',
                                                style: TextStyle(
                                                  fontSize: screenWidth * 0.050,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                  size: screenWidth * 0.06,
                                                ),
                                                onPressed: () {
                                                  deleteData(item['id']);
                                                },
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Rp. ${item['price'] ?? '0'}',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.04,
                                              color: Colors.green,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.remove_circle,
                                                color: Colors.green,
                                                size: screenWidth * 0.05,
                                              ),
                                              SizedBox(width: screenWidth * 0.02),
                                              Text(
                                                '1', 
                                                style: TextStyle(fontSize: screenWidth * 0.04),
                                              ),
                                              SizedBox(width: screenWidth * 0.02),
                                              Icon(
                                                Icons.add_circle,
                                                color: Colors.green,
                                                size: screenWidth * 0.05,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      }
                    },
                  ),

                  //Ringkasan
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.05),
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
                      
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                            child: Row(
                              children: [
                                Text(
                                  'Ringkasan Belanja',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(color: Colors.black),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('PPN 11%', style: TextStyle(fontSize: screenWidth * 0.045)),
                                Text('Rp. 10.000', style: TextStyle(fontSize: screenWidth * 0.045)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Belanja', style: TextStyle(fontSize: screenWidth * 0.045)),
                                Text('Rp. 94.000', style: TextStyle(fontSize: screenWidth * 0.045)),
                              ],
                            ),
                          ),
                          Divider(color: Colors.black),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Pembayaran',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rp. 104.000',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          ElevatedButton(
                            onPressed: () {
                              // Handle form submission
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.3,
                                vertical: screenHeight * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(screenWidth * 0.03),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}