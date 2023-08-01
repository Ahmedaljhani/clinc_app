import 'package:first_class/user/authitication/views/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  _StartScreenState() {
  }




  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        appBar: null,
        body: Container(
          color: Color(0xffE9EEF4),
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth*0.9,
                  height: screenHeight*0.15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: FadeInImage(
                      placeholder: AssetImage(
                        "assets/images/logo.png",
                      ),
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                      width: screenWidth*0.6,
                      height: screenHeight * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*0.1,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0,),
                  child: SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0CA9E1)), padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),),
                        onPressed: () {
                        },
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/clinic.png',
                              height: screenHeight*0.07,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Clinic",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: screenHeight*0.05,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0,),
                  child: SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0CA9E1)), padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),),

                        onPressed: () {
                        },
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/pharm.png',
                              height: screenHeight*0.08,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Pharmacy",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: screenHeight*0.05,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0,),
                  child: SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(

                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0CA9E1)), padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => SignInScreen()));                        },
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/user.png',
                              height: screenHeight*0.07,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "User",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        )),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );;
  }
}
