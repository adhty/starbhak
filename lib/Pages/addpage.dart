import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:starbahk_mart/Widgets/AppBarWidget2.dart';
import 'adddata.dart';

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarwidget2(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: InkWell(
                      onTap: () {
                        // Aksi ketika tombol "Add Data" diklik
                        print("Add Data button clicked");
                        // Tambahkan aksi lain yang diinginkan di sini, misalnya:
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                      },
                      child: 
                      Row(
                        children: [
                          ElevatedButton(child: Row(
                        children: [
                          Icon(Icons.add),
                          Text("ADD")
                        ],
                      ), onPressed: (){
                           Navigator.push(
                                  context, MaterialPageRoute(builder: (
                                    context) => Adddata()));
                         },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                       
                      Spacer()
                        ],
                      )
                      
                      // Container(
                      //   width: 100,
                      //   height: 30,
                      //   decoration: BoxDecoration(
                      //     color: Color.fromARGB(255, 133, 32, 188),
                      //     borderRadius: BorderRadius.circular(12),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 3,
                      //         blurRadius: 10,
                      //         offset: Offset(0, 3),
                      //       ),
                      //     ],
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //      Expanded(
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           Navigator.push(
                      //             context, MaterialPageRoute(builder: (
                      //               context) => AddData()));
                      //               Text(
                      //                 "Add Data",
                      //                 style: TextStyle(
                      //                   fontSize: 12,
                      //                   color: Colors.white,
                      //                   fontWeight:   FontWeight.bold,
                      //                 )
                      //               );
                      //         },
                      //         child: Row(
                      //           children: [
                      //         Icon(Icons.add),
                      //             // Text(
                      //             //     "Add Data",
                      //             //     style: TextStyle(
                      //             //       fontSize: 12,
                      //             //       color: Colors.white,
                      //             //       fontWeight:   FontWeight.bold,
                      //             //     ))
                      //           ],
                      //         )
                      //         ),
                      //      )
                      //     ],  
                      //   ),
                      // ),

                    ),
                  ),
                  // Kode lain tetap utuh
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "poto",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Nama Produk",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Aksi",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 600,
                      height: 100,
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
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/burger.jpeg',
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 80.000',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: InkWell(
                      onTap: () {
                        // Aksi ketika tombol "Add Data" diklik
                        print("Add Data button clicked");
                        // Tambahkan aksi lain yang diinginkan di sini, misalnya:
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                      ),
                    ),
                  ),
                  // Kode lain tetap utuh
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 600,
                      height: 100,
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
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/burger.jpeg',
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 80.000',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: InkWell(
                      onTap: () {
                        // Aksi ketika tombol "Add Data" diklik
                        print("Add Data button clicked");
                        // Tambahkan aksi lain yang diinginkan di sini, misalnya:
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                  ),
                  // Kode lain tetap utuh
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 600,
                      height: 100,
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
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/burger.jpeg',
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 80.000',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Semua bagian lainnya tetap sama
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
