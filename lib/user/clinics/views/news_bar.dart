
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewsBar extends StatefulWidget {
  @override
  _NewsBarState createState() => _NewsBarState();
}

class _NewsBarState extends State<NewsBar> {
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
        height: screenHeight*0.42,
        child: CarouselSlider(
          options: CarouselOptions(
            height: screenWidth*0.9,
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
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Title',style: TextStyle(fontSize: 24,color: Color(0xff0CA9E1)),),
                      Text('Simple Detailes',style: TextStyle(fontSize: 20,color: Color(0xff0CA9E1).withOpacity(0.50))),
                      Text('Simple Detailes',style: TextStyle(fontSize: 20,color: Color(0xff0CA9E1).withOpacity(0.50))),
                      Text('Simple Detailes',style: TextStyle(fontSize: 20,color: Color(0xff0CA9E1).withOpacity(0.50))),
                    ],
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage(
                      placeholder: AssetImage(
                        "assets/images/adsPlaceHolder.png",
                      ),
                      image: AssetImage(
                        '${item}',
                      ),
                      width: 400,
                      height: MediaQuery.of(context).size.height * 0.24,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}
