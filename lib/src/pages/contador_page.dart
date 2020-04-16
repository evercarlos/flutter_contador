import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

 @override
  createState() =>_ContadorPageState();// AQUI ESTAMOS CREANDO UNA INSTANCIA
}

class _ContadorPageState extends State<ContadorPage>{

 final _estiloTexto=TextStyle(fontSize: 25); //estiloTexto, al poner asi se dice qu cambiaré en el tiempo
 int _conteo=0;

  @override
  Widget build(context){
    return Scaffold(
     appBar: AppBar(
       title: Text('Contador'),
       centerTitle: true,
       ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de Clicks::',style: _estiloTexto,),
          Text('$_conteo',style: _estiloTexto,),//conteo.toString()
        ], 
       ),
       ),
      floatingActionButton: _crearBotones()
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );
  }

 Widget _crearBotones(){ // Widget= es opcional
   
   return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: <Widget>[
       SizedBox(width: 30.0,),
       FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
       Expanded(child: SizedBox()),
       FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer,),
       SizedBox(width: 7.0,),
       FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar,),
     ],
   );
  }

 void _agregar(){
   setState(() { _conteo++; });
 }

void _sustraer(){
  setState(() {
    _conteo--;
  });
}

void _reset(){
  setState(() {
    _conteo=0;
  });
}
  

}