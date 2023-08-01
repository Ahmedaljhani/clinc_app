import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/search/views/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';
import 'medicinic_listscreen.dart';



class PrescriptionScreen extends StatefulWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  _PrescriptionScreenState() {}
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

            Expanded(
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Color(0xffE9EEF4),
                    width: 1.0,
                  ),
                ),

                child: Card(
                  clipBehavior: Clip.antiAlias,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/pharmacy.png",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: AppBarUI()),
                ),


              ),
            ),

            SizedBox(height: screenHeight*0.01,),


            Expanded(child: ListOfClinic()),

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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          // Column(
          //   children: <Widget>[
          //     IconButton(
          //       icon: Icon(
          //         Icons.arrow_forward_ios_sharp,
          //         size: 24,
          //         color: Colors.white,
          //       ),
          //       color: Colors.grey[200],
          //       onPressed: () {
          //         Navigator.of(context).pushReplacement(
          //             MaterialPageRoute(builder: (context) => NavBar()));
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget DrImage(){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: screenWidth * 0.2,
        height: screenHeight * 0.1,
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
    );

  }

  Widget ListOfClinic(){
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
            height: screenHeight * 0.13,
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'Medical Specially',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff326789).withOpacity(0.54),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              'Doctor',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffE65C4F).withOpacity(0.54),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [

                            Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffE65C4F).withOpacity(0.54),
                            ),
                            SizedBox(width: 5),

                            Text(
                              'Date',
                              style: TextStyle(
                                color: Color(0xffE65C4F).withOpacity(0.54),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MedicinicScreen()));
                                }, icon: Icon(Icons.arrow_forward_ios,))

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );

  }


}
