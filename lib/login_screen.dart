import 'package:flutter/material.dart';
import 'package:multi_role_base_app/admin_screen.dart';
import 'package:multi_role_base_app/home_screen.dart';
import 'package:multi_role_base_app/student_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

 class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);
 
   @override
   State<LoginScreen> createState() => _LoginScreenState();
 }
 
 class _LoginScreenState extends State<LoginScreen> {

   final emailController = TextEditingController();
   final paswardController = TextEditingController();
   final ageController = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Sign up'),
         centerTitle:true,
         automaticallyImplyLeading: false,
       ),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             TextFormField(
               controller: emailController,
               decoration: const InputDecoration(
                 hintText: 'Email'
               ),
             ),
            const SizedBox(height: 20,),
             TextFormField(
               obscureText: true,
               controller: paswardController,
               decoration: const InputDecoration(
                 hintText: 'Password'
               ),
             ),
             const SizedBox(height: 20,),
             TextFormField(
               controller: ageController,
               decoration: const InputDecoration(
                 hintText: 'Age'
               ),
             ),
         const SizedBox(height: 40,),
             InkWell(
               onTap: () async{
                 SharedPreferences sp = await SharedPreferences.getInstance();
                 sp.setString('email', emailController.text.toString());
                 sp.setString('password', paswardController.text.toString());
                 sp.setString('age', ageController.text.toString());
                 // admin, student, teacher
                 sp.setString('userType', 'Admin');
                 sp.setBool('login', true);
                 if(sp.getString('userType') == 'Admin'){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => AdminScreen()));
                 }else if(sp.getString('uerType') == 'teacher'){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => StudentScreen()));
                 }else{
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => StudentScreen()));
                 }
                },
               child: Container(
                 height: 50,
                 width: double.infinity,
                 color: Colors.blueAccent,
                 child: Center(
                   child: Text('Sign up'),
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }

   // Future <String> qasiagul() async{
   //   await Future.delayed(Duration(seconds: 5));
   //   print('delay');
   //   return 'qasia';
   // }

   // void add(){
   //   int a = 2 , b = 1;
   //   print(a-b);
   // }
 }
 