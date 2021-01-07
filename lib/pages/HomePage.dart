import 'package:adacatering/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:adacatering/widgets/BestFoodWidget.dart';
import 'package:adacatering/widgets/BottomNavBarWidget.dart';
import 'package:adacatering/widgets/PopularFoodsWidget.dart';
import 'package:adacatering/widgets/SearchWidget.dart';
import 'package:adacatering/widgets/TopMenus.dart';

import '../widgets/BestFoodWidget.dart';
import '../widgets/PopularFoodsWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "ingin memesan apa hari ini?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Color(0xFF3a3737),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsUI()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
