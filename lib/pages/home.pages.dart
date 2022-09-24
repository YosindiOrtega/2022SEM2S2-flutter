

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

import '../models/boton.models.dart';
import '../widgets/matrizBotones.widges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Resultado='';
  String r='';
  List <String>  historico=[];
  bool newOperador=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora"),),
      body: Column(children: [
        Expanded( //Historico
          flex:3,
          child: SizedBox( //Los container fueron cambiados por SizedBox
            height: 100,
            //color: Color.fromARGB(255, 171, 179, 171),
            child: Row(
              children: [
                Text( historico.reversed.toString().replaceAll(',', '').replaceAll('(', '').replaceAll(')', ''),
                 style: TextStyle(
                  fontSize: 30, ),),               
              ],
            ),
          ),
        ),
        Expanded( //Franja para editar la operación
          flex:1,
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 210, 219, 210),
            child: Row(
              children: [
                Text(Resultado, style: TextStyle(
                  fontSize: 30, 
                  color: Colors.black,
                  ), ),
              ],
            ),
          ),
        ),
        Expanded( //Botones
          flex: 5,
          child: SizedBox(
            height: 100,            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                filaBotones([ //porcentaje y borrados
                  BotonModel(titulo: "%", metodo: (){
                    setState(() {
                      Resultado +='/100';
                    });                    
                  } ),
                  BotonModel(titulo: "CE", metodo: (){
                    setState(() {
                      Resultado ='';
                      historico=[];
                    });                    
                  } ),
                  BotonModel(titulo: "C", metodo: (){
                    setState(() {
                      Resultado ='' ;
                    });                    
                  } ),
                  BotonModel(titulo: "←", metodo: (){
                    setState(() {                      
                      Resultado =Resultado.substring(0,Resultado.length-1);                      
                    });                    
                  } )
                  ]),
                filaBotones([ //potencias y demas 
                  BotonModel(titulo: "1/x", metodo: (){
                    setState(() {
                      Resultado ="1/$Resultado";
                    });                    
                  } ),
                  BotonModel(titulo: "x^2", metodo: (){
                    setState(() {
                      Resultado +="^2";
                    });                    
                  } ),
                  BotonModel(titulo: "√x", metodo: (){
                    setState(() {
                      String resuTemp=Resultado;
                      Resultado = sqrt(num.parse(Resultado)).toString(); //historial
                      historico.add('√'+resuTemp +'='+Resultado +'\n');                         
                    });                    
                  } ),
                  BotonModel(titulo: "/", metodo: (){
                    setState(() {
                      Resultado +="/";
                    });                    
                  } )
                  ]),
                filaBotones([
                  BotonModel(titulo: "7", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="7";
                    });                    
                  } ),
                  BotonModel(titulo: "8", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="8";
                    });                    
                  } ),
                  BotonModel(titulo: "9", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="9";
                    });                    
                  } ),
                  BotonModel(titulo: "x", metodo: (){
                    setState(() {
                      Resultado +="*";
                    });                    
                  } )
                  ]),
                filaBotones([
                  BotonModel(titulo: "4", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="4";
                    });                    
                  } ),
                  BotonModel(titulo: "5", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="5";
                    });                    
                  } ),
                  BotonModel(titulo: "6", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="6";
                    });                    
                  } ),
                  BotonModel(titulo: "-", metodo: (){
                    setState(() {
                      Resultado +="-";
                    });                    
                  } )
                  ]),
                filaBotones([
                  BotonModel(titulo: "1", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="1";
                    });                    
                  } ),
                  BotonModel(titulo: "2", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="2";
                    });                    
                  } ),
                  BotonModel(titulo: "3", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }
                      Resultado +="3";
                    });                    
                  } ),
                  BotonModel(titulo: "+", metodo: (){
                    setState(() {
                      Resultado +="+";
                    });                    
                  } )
                  ]),
                filaBotones([
                  BotonModel(titulo: "±", metodo: (){
                    setState(() {
                      Resultado +="*(-1)";
                    });                    
                  } ),
                  BotonModel(titulo: "0", metodo: (){
                    setState(() {
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      } 
                      Resultado +="0";
                    });                    
                  } ),
                  BotonModel(titulo: ",", metodo: (){
                    setState(() {
                      Resultado+='.';
                      if(newOperador==true){
                        Resultado='';
                        newOperador=false;
                      }                       
                    });                    
                  } ),
                  BotonModel(titulo: "=", metodo: (){
                    setState(() {                      
                      r=Resultado;                 
                      Parser p = Parser();
                            ContextModel cm =  ContextModel();
                            Expression exp = p.parse(r);
                            r = exp
                                .evaluate(EvaluationType.REAL, cm)  //Aqui se hace la magia :D
                                .toString();  
                      historico.add(Resultado+'='+r +'\n');   
                      Resultado= r;
                                                               
                    });  
                    newOperador=true;                  
                  } )
                  ]),             
              ],
            ),
          ),
        )
      ],
      ),
    );   
  }
}
