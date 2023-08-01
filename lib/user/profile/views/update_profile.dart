import 'package:first_class/start_screen.dart';
import 'package:first_class/user/profile/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/home_screen.dart';
import '../../home/views/main_screen.dart';


class UpDateScreen extends StatefulWidget {
  const UpDateScreen({Key? key}) : super(key: key);

  @override
  State<UpDateScreen> createState() => _UpDateScreenState();
}

class _UpDateScreenState extends State<UpDateScreen> {


  _UpDateScreenState() {
  }
  var nameController = TextEditingController();
  var genderController = TextEditingController();
  var ageController = TextEditingController();
  var cityController = TextEditingController();
  var phoneNumberController = TextEditingController();

  var formKeySignUp = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,

        appBar: null,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Form(
            key: formKeySignUp,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center
                , // set mainAxisSize to min
                children: [
                  AppBarUI(),
                  Flexible(
                    flex:1,
                    child: Container(
                      height: screenHeight*0.1,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Wrap(children:[
                              Text('Data Modification',style: TextStyle(color: Colors.white,fontSize: 32),textAlign: TextAlign.center,)]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(flex: 1,
                    child: Container(
                        height: screenHeight*0.9,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // set the background color here
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0)),
                        ),
                        child:Column(
                          children: [
                            SizedBox(height: screenHeight*0.02,),
                            UserImage(),
                            SizedBox(height: screenHeight*0.005,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 120.0,),
                              child: SizedBox(
                                width: double.infinity,
                                height: screenHeight * 0.03,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white, backgroundColor: Colors.red, // set the text color here
                                      shape: RoundedRectangleBorder( // set the shape of the button here
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      //     builder: (context) => UpDateScreen()));

                                    },
                                    child:  const Text(
                                      "Change Photo",
                                      style: TextStyle(fontSize: 16),
                                    )),

                              ),
                            ),
                            SizedBox(height: screenHeight*0.02,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // set the background color here
                                  borderRadius: BorderRadius.circular(0.0), // set the border radius here
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    // label: Text(" User Name",textAlign: TextAlign.center,),
                                    hintText: " Name ",
                                    hintStyle: TextStyle(
                                        color: Color(0xffE65C4F).withOpacity(0.54),fontSize: 20 // set the desired font color here
                                    ),
                                    // prefixIcon: Icon(Icons.email)
                                  ),
                                  controller: nameController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: (email) {
                                    if (email?.isEmpty == true) {
                                      return "The Name cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight*0.02,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // set the background color here
                                  borderRadius: BorderRadius.circular(0.0), // set the border radius here
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    // label: Text(" User Name",textAlign: TextAlign.center,),
                                    hintText: " Gender ",
                                    hintStyle: TextStyle(
                                        color: Color(0xffE65C4F).withOpacity(0.54),fontSize: 20 // set the desired font color here
                                    ),

                                    // prefixIcon: Icon(Icons.email)
                                  ),
                                  controller: genderController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: (email) {
                                    if (email?.isEmpty == true) {
                                      return "The Gender cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight*0.02,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // set the background color here
                                  borderRadius: BorderRadius.circular(0.0), // set the border radius here
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    // label: Text(" User Name",textAlign: TextAlign.center,),
                                    hintText: " Date ",
                                    hintStyle: TextStyle(
                                        color: Color(0xffE65C4F).withOpacity(0.54),fontSize: 20 // set the desired font color here
                                    ),

                                    // prefixIcon: Icon(Icons.email)
                                  ),
                                  controller: ageController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: (email) {
                                    if (email?.isEmpty == true) {
                                      return "The Age cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight*0.02,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // set the background color here
                                  borderRadius: BorderRadius.circular(0.0), // set the border radius here
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    // label: Text(" User Name",textAlign: TextAlign.center,),
                                    hintText: " City ",
                                    hintStyle: TextStyle(
                                        color: Color(0xffE65C4F).withOpacity(0.54),fontSize: 20 // set the desired font color here
                                    ),

                                    // prefixIcon: Icon(Icons.email)
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
                            SizedBox(height: screenHeight*0.02,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // set the background color here
                                  borderRadius: BorderRadius.circular(0.0), // set the border radius here
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    // label: Text(" User Name",textAlign: TextAlign.center,),
                                    hintText: " Phone Number ",
                                    hintStyle: TextStyle(
                                        color: Color(0xffE65C4F).withOpacity(0.54),fontSize: 20 // set the desired font color here
                                    ),

                                    // prefixIcon: Icon(Icons.email)
                                  ),
                                  controller: phoneNumberController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: (email) {
                                    if (email?.isEmpty == true) {
                                      return "The phoneNumber cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight*0.02,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 120.0,),
                              child: SizedBox(
                                width: double.infinity,
                                height: screenHeight * 0.06,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.black, backgroundColor: Colors.red, // set the text color here
                                      shape: RoundedRectangleBorder( // set the shape of the button here
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                                          builder: (context) => NavBar()));

                                    },
                                    child:  const Text(
                                      "Update",
                                      style: TextStyle(fontSize: 20,color: Color(0xff326789)),
                                    )),

                              ),
                            ),
                          ],
                        ) ),)

                ],
              ),
            ),
          ),
        ),
      ),
    );
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
                ),
                color: Colors.grey[200],
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => NavBar()));
                },
              ),
            ],
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
