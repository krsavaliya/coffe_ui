// ignore_for_file: dead_code, prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  final String coffeImagePath;
  final String coffeName;
  final String coffePrice;

  const CoffeTile({
    required this.coffeImagePath,
    required this.coffeName,
    required this.coffePrice,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //images
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeImagePath),
            ),

            //names
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Esspresso',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pure Coffee Beans',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + coffePrice,
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
