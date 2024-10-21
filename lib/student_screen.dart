 import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

 class StudentScreen extends StatefulWidget {
   const StudentScreen({Key? key}) : super(key: key);
 
   @override
   State<StudentScreen> createState() => _StudentScreenState();
 }
 
 class _StudentScreenState extends State<StudentScreen> {

   String email = '', age = '', type = '', password = '';
   @override
   void initState() {
     // TODO: implement initState
     super.initState();
     loadData();
   }
   loadData() async{
     SharedPreferences sp =await SharedPreferences.getInstance();
     email = sp.getString('email') ?? '';
     age = sp.getString('age') ?? '';
     type = sp.getString('userType') ?? '';
     password = sp.getString('password') ?? '';
     setState(() {

     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
         backgroundColor: Color(0xff58B1EC),
         title: Text('Student Screen'),
         automaticallyImplyLeading: false,
       ),
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             // Center(
             //     child: Text('Succesfully Login',style: TextStyle(fontSize: 45,color: Colors.blue),)),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                 Text('Email'),
                 Text(email.toString()),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                 Text('Age'),
                 Text(age.toString()),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                 Text('userType'),
                 Text(type.toString()),
               ],
             ),
             const SizedBox(height: 40,),
             InkWell(
               onTap: () async{
                 SharedPreferences sp = await SharedPreferences.getInstance();
                 sp.clear();
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => LoginScreen()));
                 // SharedPreferences sp = await SharedPreferences.getInstance();
                 // sp.setString('name', 'qasiagul');
                 // sp.setInt('age', 17);
                 // print(sp.getString('name'));
                 // print(sp.getInt('age'));
                 //
                 // sp.remove('name');
                 // print(sp.getString('name'));
                 // add();
                 // qasiagul();
               },
               child: Container(
                 height: 50,
                 width: double.infinity,
                 color: Color(0xffDCC279),
                 child: Center(
                   child: Text('LogOut'),
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }
 