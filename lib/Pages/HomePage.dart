import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbahk_mart/Pages/adddata.dart';
import 'package:starbahk_mart/Pages/addpage.dart';
import 'package:starbahk_mart/Widgets/AppBarWidget.dart';
// import 'package:starbahk_mart/Widgets/NewestItemWidget.dart';
import 'package:starbahk_mart/Widgets/PopularItenesWidget.dart';
import '../Widgets/CategoriesWidget.dart';





class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarwidget(),
          SizedBox(height: 30),
          CategoriesWidget(),
          SizedBox(height: 30),
          
          Padding(
            padding: EdgeInsets.only(top: 20, right: 300),
            child: Text(
              "All food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              child: PopularItenesWidget(),
            ),
          ),

        ],
      ),
    );
  }
}
