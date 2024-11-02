import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbahk_mart/Pages/HomePage.dart';
import 'package:starbahk_mart/Widgets/NavBarWidget.dart';

class AppBarwidget2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 0, 
        horizontal: 0
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navbarwidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  shape: CircleBorder(),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.transparent,
                ),
                child: Icon(Icons.chevron_left, size: 40, color: Colors.black),
              ),
              SizedBox(width: 280),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Icon(CupertinoIcons.person),
                ),
              ),
            ],
          ),
    );
  }
}