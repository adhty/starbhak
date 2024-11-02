import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItenesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          children: [
          
            //single items
            // for(int i=0; i<10; i++)
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20 ),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/burger.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Burger", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/spaghetti.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Spaghetti", 
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 60.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),


              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/pizza.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Pizza", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Pizza", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 100.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/drink.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Drink", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "try a cold drink", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                
              ],
            ),Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/burger.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Burger", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                 Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/burger.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Burger", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                
              ],
            ),Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/burger.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Burger", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                 Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3)
                        )
                      ]),
                
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/burger.jpeg",
                                height: 130,
                              ),
                            ),
                            Text(
                              "Hot Burger", 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,), 
                
                            Text(
                              "Taste Our Hot Burger", 
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 80.000",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),

                
              ],
            ),

            
          ],
        )
      ),
    );
  }
}