import 'package:flutter/material.dart';
import 'package:starbahk_mart/widgets/AppBarWidget2.dart';

class Cartpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: 
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarwidget2(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20, 
                    left: 10, 
                    bottom: 10,
                    ),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),

                //item 

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
                        )
                      ]
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'burger',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),

                          
                        )
                      ],
                    ),
                  ),
                ),

                //item 

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
                        )
                      ]
                    ),

                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/es krim.jpeg',
                            height: 80,
                            width: 150,
                            ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Ice Cream',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 40.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),

                          
                        )
                      ],
                    ),
                  ),
                ),
                //item 

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
                        )
                      ]
                    ),

                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/pizza.jpeg',
                            height: 80,
                            width: 150,
                            ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pizza',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),

                          
                        )
                      ],
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ringkasan Belanja:",
                              style: TextStyle(fontSize: 25),
                              
                            ),
                            
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),

                       Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "PPN 13%",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Rp. 15.000",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),

                       Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Belanja",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Rp. 250.000",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Belanja",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Rp. 250.000",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                       Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Belanja",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Rp. 215.000",
                              style: TextStyle(fontSize: 20),
                            ),
                          
                          ],
                        
                        ),
                        
                      ),
                      
                      ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 130,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Submit', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                        ),
                      ),
                  ),

                      
                    ],
                  ),
                  
                ),
                )

              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}