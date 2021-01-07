import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSldr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(340.0),
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            items: ["images/banner_1.png", "images/banner_2.png"].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ));
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: ScreenUtil().setHeight(300.0),
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),

          // Container(
          //   margin: EdgeInsets.symmetric(vertical: 50),
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Container(
          //           margin: EdgeInsets.symmetric(horizontal: 2),
          //           width: ScreenUtil().setWidth(10),
          //           height: ScreenUtil().setHeight(10),
          //           decoration: BoxDecoration(
          //               color: Colors.redAccent,
          //               borderRadius: BorderRadius.all(Radius.circular(100))),
          //         ),
          //         Container(
          //           margin: EdgeInsets.symmetric(horizontal: 2),
          //           width: ScreenUtil().setWidth(10),
          //           height: ScreenUtil().setHeight(10),
          //           decoration: BoxDecoration(
          //               color: Colors.grey.withOpacity(0.8),
          //               borderRadius: BorderRadius.all(Radius.circular(100))),
          //         ),
          //         Container(
          //           margin: EdgeInsets.symmetric(horizontal: 2),
          //           width: ScreenUtil().setWidth(10),
          //           height: ScreenUtil().setHeight(10),
          //           decoration: BoxDecoration(
          //               color: Colors.grey.withOpacity(0.8),
          //               borderRadius: BorderRadius.all(Radius.circular(100))),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
