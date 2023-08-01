import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/search/views/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';


class ResvsScreen extends StatefulWidget {
  const ResvsScreen({Key? key}) : super(key: key);

  @override
  State<ResvsScreen> createState() => _ResvsScreenState();
}

class _ResvsScreenState extends State<ResvsScreen> {
  _ResvsScreenState() {}


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Column(
          children: [
            AppBarUI(),
            SizedBox(height: screenHeight*0.02,),
            Expanded(child: ListOfRevs())
          ],
        ),
      ),
    );
    ;
  }

  Widget AppBarUI() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          SizedBox(
            width: screenWidth * 0.4,
            height: screenHeight * 0.05,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: FadeInImage(
                placeholder: AssetImage(
                  "assets/images/logo.png",
                ),
                image: AssetImage(
                  "assets/images/logo.png",
                ),
                width: screenWidth * 0.6,
                height: screenHeight * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 24,
                  color: Color(0xff1E9AC9),
                ),
                color: Colors.grey[200],
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ListOfRevs(){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return   ListView.builder(
      itemCount: 10, // Replace with the number of items in your list
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          child: Container(
            width: double.infinity,
            height: screenHeight * 0.125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            child: Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10:00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff326789),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.cached,
                            size: screenWidth*0.1,
                            color: Color(0xff1E9AC9),
                          ),
                          color: Colors.grey[200],
                          onPressed: () {

                            // Navigator.of(context).pushReplacement(
                            //     MaterialPageRoute(builder: (context) => NavBar()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

  }
}
