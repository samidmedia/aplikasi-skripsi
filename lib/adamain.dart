import 'package:flutter/material.dart';
import 'package:adacatering/foodcard.dart';

import 'pages/HomePage.dart';

void main() {
  runApp(Adamain());
}

class Adamain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  //here i'm going to place a list of image url
  List<String> imgUrl = [
    "https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png",
    "https://toreys.net/wp-content/uploads/2019/06/steak-fries-400x209-reduced.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      //let's start by the appbar
      appBar: AppBar(
        backgroundColor: Color(0xFFfcfcfc),
        title: Text(
          "CATEGORY",
          style: TextStyle(
            color: Color(0xFFfc6a26),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),

      //Now let's build the body of our app
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's create the welcoming Text
            Text(
              "Pilih \nMenu yang ingin anda pesan",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Container(
            //   width: double.infinity,
            //   height: 50.0,
            //   decoration: BoxDecoration(
            //     color: Color(0x55d2d2d2),
            //     borderRadius: BorderRadius.circular(30.0),
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //           child: TextField(
            //         decoration: InputDecoration(
            //           hintText: "Search... ",
            //           border: InputBorder.none,
            //           contentPadding: EdgeInsets.only(left: 20.0),
            //         ),
            //       )),
            //       RaisedButton(
            //         elevation: 3.0,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //         ),
            //         onPressed: () {},
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 15.0),
            //           child: Icon(
            //             Icons.search,
            //             color: Colors.white,
            //           ),
            //         ),
            //         color: Color(0xFFfc6a26),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's build the food menu
            //I'm going to create a custom widget
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                //let's change the aspect ration for the child card
                childAspectRatio: 0.7,
                children: [
                  InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => HalamanDetail()),
                        // );
                      },
                      child: foodCard(imgUrl[0], "Steak & kentang", "")),
                  foodCard(imgUrl[1], "ayam katsu", ""),
                  foodCard(imgUrl[2], "Lasagna", ""),
                  foodCard(imgUrl[3], "Daging & Kerang", ""),
                  foodCard(imgUrl[4], "Meat plate", ""),
                  foodCard(imgUrl[5], "Meat plate & Calamary", ""),
                ],
              ),
            )
          ],
        ),
      ),

      //Now let's create the bottom bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFfcfcfc),
        elevation: 0.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("Our Shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
