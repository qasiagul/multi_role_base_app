




import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_role_base_app/home_screen.dart';
import 'package:multi_role_base_app/login_screen.dart';
import 'package:multi_role_base_app/student_screen.dart';
import 'package:multi_role_base_app/teachers_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
 
  class SplashScreen extends StatefulWidget {
    const SplashScreen({Key? key}) : super(key: key);
  
    @override
    State<SplashScreen> createState() => _SplashScreenState();
  }
  
  class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

    void isLogin()async{
      SharedPreferences sp = await SharedPreferences.getInstance();
      bool isLogin = sp.getBool('isLogin') ?? false;
      String userType  = sp.getString('userType') ?? '';


      if(isLogin){

        if(userType == 'student'){
          Timer(Duration(seconds: 5), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudentScreen())
            );
          });
        }else if(userType == 'teacher'){
          Timer(Duration(seconds: 5), () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TeacherScreen())
            );
          });

        }
      }else{
        Timer(Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen())
          );
        });
      }
    }

    @override
    Widget build(BuildContext context) {
      print('biuld');
      return Scaffold(
        body:Image(
            height: double.infinity,
            fit: BoxFit.fitHeight,
            image: NetworkImage('https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?cs=srgb&dl=pexels-ann-h-1762851.jpg&fm=jpg&_gl=1*1eq2mub*_ga*MjA2NjMzNTI3OS4xNjg0OTU2NTc4*_ga_8JE65Q40S6*MTY4ODc1Nzg0NS4xNi4xLjE2ODg3NTc4NTkuMC4wLjA.')),
      );
    }
  }
  







   SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Text(
                  "Enter the OTP we have sent you to your Number",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),