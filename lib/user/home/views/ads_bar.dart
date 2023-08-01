
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AdsBar extends StatefulWidget {
  @override
  _AdsBarState createState() => _AdsBarState();
}

class _AdsBarState extends State<AdsBar> {
  PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.9,
  );
  List adsResponse=[
    "assets/images/ads1.png",
    "assets/images/ads2.png",
    "assets/images/ads3.png",

  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      child: SizedBox(
        height: screenHeight*0.2,
        child: CarouselSlider(
          options: CarouselOptions(
            height: screenWidth*0.4,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: adsResponse
              .map((item) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage(
                placeholder: AssetImage(
                  "assets/images/adsPlaceHolder.png",
                ),
                image: AssetImage(
                  '${item}',
                ),
                width: 400,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}
