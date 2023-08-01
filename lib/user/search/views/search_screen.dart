import 'package:first_class/start_screen.dart';
import 'package:first_class/user/profile/views/profile_screen.dart';
import 'package:first_class/user/search/views/resv_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/views/home_screen.dart';
import '../../home/views/main_screen.dart';
import 'drprofile_screen.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  _SearchScreenState() {
  }
  var nameController = TextEditingController();


  var formKeySignUp = GlobalKey<FormState>();
  String _selectedOption = "Option 1";
  TextEditingController _nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE65C4F),

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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60.0)
                        ),

                      ),
                      height: screenHeight*0.1,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SearchBarUI(),                        ],
                      ),
                    ),
                  ),
                  Flexible(flex: 1,
                    child: Container(
                        height: screenHeight*0.9,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // set the background color here
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0)),
                        ),
                        child:Column(
                          children: [
                            SizedBox(height: screenHeight*0.03,),


                            Expanded(child: ListOfDoctors()),

                            SizedBox(height: screenHeight*0.02,),


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
                color: Color(0xff326789),
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

  Widget SearchBarUI() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
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
    );
  }

  Widget ListOfDoctors(){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return   ListView.builder(
      itemCount: 10, // Replace with the number of items in your list
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox( width: screenWidth*0.9,
              height: screenHeight*0.31,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(flex: 1,child: Text('Name:',style: TextStyle(
                              color: Color(0xffE65C4F),fontSize: 18 // set the desired font color here
                          ),)),
                          Expanded(flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
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

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Clinic:',
                                  style: TextStyle(
                                    color: Color(0xffE65C4F),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.grey[200],

                                  ),// set the background color here
                                  child: DropdownButton<String>(
                                    value: _selectedOption,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedOption = newValue!;
                                      });
                                    },
                                    items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(value),
                                        ),
                                      );
                                    }).toList(),
                                    dropdownColor: Colors.grey[200], // set the desired background color here
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight*0.04,),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                child: SizedBox(
                                  height: screenHeight * 0.05,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Color(0xff326789), // set the text color here
                                        shape: RoundedRectangleBorder( // set the shape of the button here
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (context) => ResvsScreen()));

                                      },
                                      child:  const Text(
                                        "Resv",
                                        style: TextStyle(fontSize: 18),
                                      )),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                child: SizedBox(
                                  height: screenHeight * 0.05,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Color(0xffE65C4F), // set the text color here
                                        shape: RoundedRectangleBorder( // set the shape of the button here
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (context) => DRProfileScreen()));

                                      },
                                      child:  const Text(
                                        "Profile",
                                        style: TextStyle(fontSize: 18),
                                      )),

                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 12.0),

                  ],
                ),

              )),
        );
      },
    );

  }

}
