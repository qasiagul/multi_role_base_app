import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

 class DropdownScreen extends StatefulWidget {
   const DropdownScreen({Key? key, required this.title}) : super(key: key);

   final String title;

   @override
   State<DropdownScreen> createState() => _DropdownScreenState();
 }
 
 class _DropdownScreenState extends State<DropdownScreen> {
  late String valueChosse;
  List listItem = [
    "Item 1" , "Item 2" , "Item 3" , "Item 4" , "Item 5"
  ];


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       ),
       body: Center(

       ),
     );
   }

 }
 