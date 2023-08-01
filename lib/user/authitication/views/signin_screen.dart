import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  _SignInScreenState() {}
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKeySignUp = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0CA9E1),
        appBar: null,
        body: Column(
          children: [
            AppBarUI(),
            SizedBox(height: screenHeight*0.06,),
            Container(
              width: screenWidth * 0.4,
              height: screenHeight * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FadeInImage(
                  placeholder: AssetImage(
                    "assets/images/profile.png",
                  ),
                  image: AssetImage(
                    "assets/images/profile.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // set the background color here
                  borderRadius:
                      BorderRadius.circular(10.0), // set the border radius here
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    // label: Text(" User Name",textAlign: TextAlign.center,),
                    hintText: " User Name ",
                    hintStyle: TextStyle(
                      color: Color(0xff326789).withOpacity(0.54),fontSize: 20 // set the desired font color here
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // prefixIcon: Icon(Icons.email)
                  ),
                  controller: nameController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (email) {
                    if (email?.isEmpty == true) {
                      return "البريد الإلكتروني لا يمكن أن يكون فارغاً";
                    } else if (email?.contains("@") == false ||
                        email?.contains(".com") == false) {
                      return "يجب إدخال البريد الإلكتروني";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // set the background color here
                  borderRadius:
                      BorderRadius.circular(10.0), // set the border radius here
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    // label: Text(" User Name",textAlign: TextAlign.center,),
                    hintText: " Password ",
                    hintStyle: TextStyle(
                        color: Color(0xff326789).withOpacity(0.54),fontSize: 20 // set the desired font color here
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // prefixIcon: Icon(Icons.email)
                  ),
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (email) {
                    if (email?.isEmpty == true) {
                      return "the password can't be empty";
                    } else if (email?.contains("@") == false ||
                        email?.contains(".com") == false) {
                      return "should be input the password ";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.grey[200],
                      // set the text color here
                      shape: RoundedRectangleBorder(
                        // set the shape of the button here
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NavBar()));
                    },
                    child: const Text(
                      " Log In",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff326789)),
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Or',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.grey[200],
                      // set the text color here
                      shape: RoundedRectangleBorder(
                        // set the shape of the button here
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: const Text(
                      " Create Account",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff326789)),
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
          Column(
            children: <Widget>[
              // IconButton(
              //   icon: Icon(
              //     Icons.arrow_back_ios,
              //     size: 32,
              //   ),
              //   color: Colors.grey[200],
              //   onPressed: () {
              //     Navigator.of(context).pushReplacement(
              //         MaterialPageRoute(builder: (context) => StartScreen()));
              //   },
              // ),
            ],
          ),
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
        ],
      ),
    );
  }
}
