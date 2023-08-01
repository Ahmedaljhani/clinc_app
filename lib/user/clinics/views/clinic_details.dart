import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';
import 'clinics_screen.dart';
import 'news_bar.dart';


class ClinicsDetailsScreen extends StatefulWidget {
  const ClinicsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ClinicsDetailsScreen> createState() => _ClinicsDetailsScreenState();
}

class _ClinicsDetailsScreenState extends State<ClinicsDetailsScreen> {
  _ClinicsDetailsScreenState() {}
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
                      'Medical Speciaities',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff1E9AC9),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                        itemCount: medicalSpecialities.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 2.0, left: 30.0),
                            child: Text(
                              "* ${medicalSpecialities[index]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff1E9AC9),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,bottom: 2.0,top: 0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [Icon(Icons.arrow_drop_down,size: 32,)],),
                  )
                ],
              ),
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,bottom: 8.0),
              child: Row(children: [
                Text(
                  'Latest News',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffE65C4F),
                  ),
                ),            ],),
            ),
            NewsBar(),
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
                      MaterialPageRoute(builder: (context) => ClinicsScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
