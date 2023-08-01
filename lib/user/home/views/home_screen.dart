import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/clinics/views/clinics_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../healthprofile/views/Health_screen.dart';
import '../../search/views/search_screen.dart';
import 'ads_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState() {}
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKeySignUp = GlobalKey<FormState>();

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
            AdsBar(),
            SizedBox(
              height: screenHeight * 0.05,
            ),
        SizedBox(
          height: screenWidth*0.17,
          width: screenWidth*0.17,
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage("assets/images/clinics.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
            SizedBox(height: screenHeight*0.015,),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.09,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      // set the text color here
                      shape: RoundedRectangleBorder(
                        // set the shape of the button here
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(
                        color: Color(0xff78A6C8).withOpacity(0.56), // set the border color here
                        width: 1, // set the border width here
                      ),
                    ),
                    onPressed: () {

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ClinicsScreen()));
                    },
                    child: const Text(
                      " List Of Clinics",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffE65C4F)),
                    )),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              height: screenWidth*0.17,
              width: screenWidth*0.17,
              child: Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage("assets/images/hprof.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.015,),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.09,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      // set the text color here
                      shape: RoundedRectangleBorder(
                        // set the shape of the button here
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(
                        color: Color(0xff78A6C8).withOpacity(0.56), // set the border color here
                        width: 1, // set the border width here
                      ),
                    ),
                    onPressed: () {

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HealthProfileScreen()));

                    },
                    child: const Text(
                      " Health  Profile",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffE65C4F)),
                    )),
              ),
            ),
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
          SearchBarUI()
        ],
      ),
    );
  }

  Widget SearchBarUI() {
    return GestureDetector(
      onTap:(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => SearchScreen()));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.50,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Card(
            elevation: 3,
            color: Color(0xFFE9EEF4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.search, color: Color(0xFFB9BABC)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      readOnly: true,
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                      },
                      style: Theme.of(context).textTheme.subtitle1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        labelText: 'ٍSearch',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFFB9BABC),
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0.2,
                          color: Color(0xFFB9BABC),
                        ),
                      ),
                      onEditingComplete: () {},
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
