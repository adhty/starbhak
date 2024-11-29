import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Calculate number of items per row based on screen width
            int itemsPerRow = (constraints.maxWidth / 180).floor();

            // Mock data for items
            final items = [
              {
                "image": "images/burger.jpeg",
                "title": "Hot Burger",
                "subtitle": "Taste Our Hot Burger",
                "price": "Rp 80.000"
              },
              {
                "image": "images/spaghetti.jpeg",
                "title": "Spaghetti",
                "subtitle": "Taste Our Hot Spaghetti",
                "price": "Rp 60.000"
              },
              {
                "image": "images/pizza.jpeg",
                "title": "Hot Pizza",
                "subtitle": "Taste Our Hot Pizza",
                "price": "Rp 100.000"
              },
              {
                "image": "images/drink.jpeg",
                "title": "Drink",
                "subtitle": "Try a Cold Drink",
                "price": "Rp 40.000"
              },
              // Add more items if needed
            ];

            // Build rows dynamically based on items
            return Column(
              children: List.generate(
                (items.length / itemsPerRow).ceil(),
                (rowIndex) {
                  int start = rowIndex * itemsPerRow;
                  int end = (start + itemsPerRow).clamp(0, items.length);
                  List<Map<String, String>> rowItems = items.sublist(start, end);

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: rowItems.map((item) => buildItemCard(item)).toList(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildItemCard(Map<String, String> item) {
    return Padding(
      padding: EdgeInsets.all(8.0),
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
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  item['image']!,
                  height: 130,
                ),
              ),
              Text(
                item['title']!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                item['subtitle']!,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['price']!,
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
    );
  }
}