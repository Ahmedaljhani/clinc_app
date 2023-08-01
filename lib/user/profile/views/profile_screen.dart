import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/profile/views/update_profile.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _ProfileScreenState() {}
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKeySignUp = GlobalKey<FormState>();

  var genderController = TextEditingController();
  var ageController = TextEditingController();
  var cityController = TextEditingController();
  var phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9EEF4),
        appBar: null,
        body: Column(
          children: [
            AppBarUI(),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            UserImage(),
            SizedBox(height: screenHeight*0.06,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Row(
                children: [
                  Expanded(flex: 1,child: Text('Name:',style: TextStyle(
                      color: Color(0xff326789),fontSize: 20 // set the desired font color here
                  ),)),
                  Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EEF4), // set the background color here
                        borderRadius: BorderRadius.circular(0.0), // set the border radius here
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE65C4F), width: 2.0),
                          ),
                          // label: Text(" User Name",textAlign: TextAlign.center,),// prefixIcon: Icon(Icons.email)
                        ),
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if (email?.isEmpty == true) {
                            return "The City cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(flex: 1,child: Text('Phon:',style: TextStyle(
                      color: Color(0xff326789),fontSize: 20 // set the desired font color here
                  ),)),
                  Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EEF4), // set the background color here
                        borderRadius: BorderRadius.circular(0.0), // set the border radius here
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE65C4F), width: 2.0),
                          ),
                          // label: Text(" User Name",textAlign: TextAlign.center,),// prefixIcon: Icon(Icons.email)
                        ),
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if (email?.isEmpty == true) {
                            return "The City cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(flex: 1,child: Text('Age:',style: TextStyle(
                      color: Color(0xff326789),fontSize: 20 // set the desired font color here
                  ),)),
                  Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EEF4), // set the background color here
                        borderRadius: BorderRadius.circular(0.0), // set the border radius here
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE65C4F), width: 2.0),
                          ),
                          // label: Text(" User Name",textAlign: TextAlign.center,),// prefixIcon: Icon(Icons.email)
                        ),
                        controller: ageController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if (email?.isEmpty == true) {
                            return "The City cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(flex: 1,child: Text('City:',style: TextStyle(
                      color: Color(0xff326789),fontSize: 20 // set the desired font color here
                  ),)),
                  Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EEF4), // set the background color here
                        borderRadius: BorderRadius.circular(0.0), // set the border radius here
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE65C4F), width: 2.0),
                          ),
                          // label: Text(" User Name",textAlign: TextAlign.center,),// prefixIcon: Icon(Icons.email)
                        ),
                        controller: cityController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if (email?.isEmpty == true) {
                            return "The City cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Row(
                children: [
                  Expanded(flex: 1,child: Text('ID:',style: TextStyle(
                      color: Color(0xff326789),fontSize: 20 // set the desired font color here
                  ),)),
                  Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EEF4), // set the background color here
                        borderRadius: BorderRadius.circular(0.0), // set the border radius here
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE65C4F), width: 2.0),
                          ),
                          // label: Text(" User Name",textAlign: TextAlign.center,),// prefixIcon: Icon(Icons.email)
                        ),
                        controller: cityController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if (email?.isEmpty == true) {
                            return "The City cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.06,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0,),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.red, // set the text color here
                      shape: RoundedRectangleBorder( // set the shape of the button here
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => UpDateScreen()));

                    },
                    child:  const Text(
                      "Update",
                      style: TextStyle(fontSize: 20),
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
        ],
      ),
    );
  }

  Widget UserImage(){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.3,
      height: screenHeight * 0.15,
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
    );

  }


}
