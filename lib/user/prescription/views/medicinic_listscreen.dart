import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/prescription/views/prescription_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';



class MedicinicScreen extends StatefulWidget {
  const MedicinicScreen({Key? key}) : super(key: key);

  @override
  State<MedicinicScreen> createState() => _MedicinicScreenState();
}

class _MedicinicScreenState extends State<MedicinicScreen> {
  _MedicinicScreenState() {}
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKeySignUp = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List<String> medicalSpecialities = [
      'Cardiology',
      'Dermatology',
      'Endocrinology',
      'Gastroenterology',
      'Hematology',
      'Infectious Disease',
      'Neurology',
      'Oncology',
      'Pediatrics',
      'Psychiatry',
    ];
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9EEF4),

        appBar: null,
        body: Column(
          children: [
            AppBarUI(),
            SizedBox(height: screenHeight*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Color(0xffE9EEF4),
                    width: 1.0,
                  ),
                ),
                child: Card(
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                        child: Text(
                          'Medicament ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffE65C4F),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('Made in', style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff78A6C8).withOpacity(0.73),
                          ),),
                          Text('Price', style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff78A6C8).withOpacity(0.73),
                          ),),Row(
                            children: [
                              Text('Pharmacy', style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff78A6C8).withOpacity(0.73),
                              ),),
                              Icon(Icons.pin_drop,color: Color(0xffEE8D84),),
                            ],
                          )


                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('Made in', style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff78A6C8).withOpacity(0.73),
                          ),),
                          Text('Price', style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff78A6C8).withOpacity(0.73),
                          ),),Row(
                            children: [
                              Text('Pharmacy', style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff78A6C8).withOpacity(0.73),
                              ),),
                              Icon(Icons.pin_drop,color: Color(0xffEE8D84),),
                            ],
                          )


                        ],),
                      ),

                    ],
                  ),
                ),
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
                      MaterialPageRoute(builder: (context) => PrescriptionScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
