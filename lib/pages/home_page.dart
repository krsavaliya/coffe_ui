// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:coffeui/utile/coffe_tile.dart';
import 'package:coffeui/utile/coffe_types.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeType = [
    [
      'Esspresso',
      true,
    ],
    [
      'Capuccino',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Chocolate',
      false,
    ],
  ];

  // coffe type selected
  void coffeTypeSelected(int index) {
    setState(() {

      //loop for for rest of selection
      for(int i=0; i < coffeType.length; i++){
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Notifications',
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find The Best Coffee For You",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee',
                hintStyle:
                    TextStyle(color: const Color.fromARGB(255, 179, 178, 178)),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 179, 178, 178)),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          //types
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeType.length,
                itemBuilder: (context, index) {
                  return CoffeeTypes(
                    coffeeTypes: coffeType[index][0],
                    isSelected: coffeType[index][1],
                    onTap: () {
                      coffeTypeSelected(index);
                    },
                  );
                }),
          ),

          //tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeTile(
                  coffeImagePath: 'lib/images/cofe1.jpg',
                  coffeName: 'Espresso',
                  coffePrice: '5.99',
                ),
                CoffeTile(
                  coffeImagePath: 'lib/images/cofe2.jpg',
                  coffeName: 'Cappuchino',
                  coffePrice: '4.49',
                ),
                CoffeTile(
                  coffeImagePath: 'lib/images/cofe3.jpg',
                  coffeName: 'Latte',
                  coffePrice: '4.99',
                ),
                CoffeTile(
                  coffeImagePath: 'lib/images/cofe4.jpg',
                  coffeName: 'Balck',
                  coffePrice: '3.99',
                ),
                CoffeTile(
                  coffeImagePath: 'lib/images/cofe5.jpg',
                  coffeName: 'Chocolate',
                  coffePrice: '8.99',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
