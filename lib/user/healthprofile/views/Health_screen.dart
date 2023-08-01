import 'package:first_class/start_screen.dart';
import 'package:first_class/user/authitication/views/signup_screen.dart';
import 'package:first_class/user/search/views/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/main_screen.dart';



class HealthProfileScreen extends StatefulWidget {
  const HealthProfileScreen({Key? key}) : super(key: key);

  @override
  State<HealthProfileScreen> createState() => _HealthProfileScreenState();
}

class _HealthProfileScreenState extends State<HealthProfileScreen> {
  _HealthProfileScreenState() {}
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
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: screenHeight * 0.2,
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
              image: AssetImage("assets/images/img-doctors.png",),
              fit: BoxFit.cover,
            ),
          ),
                        child: AppBarUI()),
                  ),


              ),

              SizedBox(height: screenHeight*0.01,),


              Column(
                children: [
                  SizedBox(height: screenHeight*0.85,width: screenWidth*0.95,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenHeight*0.02,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Chronic Diseases',style: TextStyle(fontSize: 24,color: Color(0xffE65C4F),fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 10.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: screenHeight * 0.2,
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
                                color: Color(0xffE9EEF4),
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff1E9AC9),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        // child: ListView.builder(
                                        //   itemCount: medicalSpecialities.length,
                                        //   itemBuilder: (BuildContext context, int index) {
                                        //     return Padding(
                                        //       padding: const EdgeInsets.only(top: 2.0, left: 30.0),
                                        //       child: Text(
                                        //         "* ${medicalSpecialities[index]}",
                                        //         style: TextStyle(
                                        //           fontSize: 20,
                                        //           color: Color(0xff1E9AC9),
                                        //         ),
                                        //       ),
                                        //     );
                                        //   },
                                        // ),
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
                          SizedBox(height: screenHeight*0.01,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Surgeries ',style: TextStyle(fontSize: 24,color: Color(0xffE65C4F),fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 10.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: screenHeight * 0.2,
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
                                color: Color(0xffE9EEF4),
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff1E9AC9),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        // child: ListView.builder(
                                        //   itemCount: medicalSpecialities.length,
                                        //   itemBuilder: (BuildContext context, int index) {
                                        //     return Padding(
                                        //       padding: const EdgeInsets.only(top: 2.0, left: 30.0),
                                        //       child: Text(
                                        //         "* ${medicalSpecialities[index]}",
                                        //         style: TextStyle(
                                        //           fontSize: 20,
                                        //           color: Color(0xff1E9AC9),
                                        //         ),
                                        //       ),
                                        //     );
                                        //   },
                                        // ),
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
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(''
                                'Important Notes',style: TextStyle(fontSize: 24,color: Color(0xffE65C4F),fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 10.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: screenHeight * 0.2,
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
                                color: Color(0xffE9EEF4),
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0, left: 20.0),
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff1E9AC9),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        // child: ListView.builder(
                                        //   itemCount: medicalSpecialities.length,
                                        //   itemBuilder: (BuildContext context, int index) {
                                        //     return Padding(
                                        //       padding: const EdgeInsets.only(top: 2.0, left: 30.0),
                                        //       child: Text(
                                        //         "* ${medicalSpecialities[index]}",
                                        //         style: TextStyle(
                                        //           fontSize: 20,
                                        //           color: Color(0xff1E9AC9),
                                        //         ),
                                        //       ),
                                        //     );
                                        //   },
                                        // ),
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
                        ],

                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight*0.02,)
                ],
              ),

            ],
          ),
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
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 24,
                  color: Colors.white,
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

}
