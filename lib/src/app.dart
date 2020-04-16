
import 'package:fh_contador/src/pages/contador_page.dart';
import 'package:fh_contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
   debugShowCheckedModeBanner: false,
   //home: HomePage(),
   home: ContadorPage(),
   );
 }
}