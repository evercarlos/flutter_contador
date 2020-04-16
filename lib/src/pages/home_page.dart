
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
 
 final estiloTexto=TextStyle(fontSize: 25); //estiloTexto, al poner asi se dice qu cambiaré en el tiempo
 final conteo=10;


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Contador'),
       centerTitle: true,
       ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de Click::',style: estiloTexto,),
          Text('$conteo',style: estiloTexto,),//conteo.toString()
        ], 
       ),
       ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         // conteo=conteo+1;
        },
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );

 }
}