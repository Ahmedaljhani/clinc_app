import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool _isAuthenticated = false;

  //check if the user loginin before or not by token parameter in sharedpref
  Future<void> checkAuthentication() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    setState(() {
      _isAuthenticated = token != null && token != 'false';
    });
    navigateToMainScreen();
  }

  //choose the screen will move there after check the Authenticated
  Future<void> navigateToMainScreen() async {
    if (_isAuthenticated) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => StartScreen()));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => SignInScreen()));
    }
  }
  //the time to display splash screen
  Future<void> loadData() async {
    // Add your app initialization logic here
    await Future.delayed(
        Duration(milliseconds: 2950)); // Simulate a delay of 2 seconds
  }

  @override
  void initState() {
    super.initState();
    loadData().then((_) {
      setState(() {
        checkAuthentication();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/welcome.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }}
