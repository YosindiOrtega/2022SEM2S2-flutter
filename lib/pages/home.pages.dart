import 'package:calculadora/models/boton.model.dart';
import 'package:flutter/material.dart';

import '../widgets/matrizBotones.widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Resultado='Test variable';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora"),),
      body: Column(children: [
        Expanded(
          flex:4,
          child: Container(
            height: 100,
            color: Colors.red,
            child: Row(
              children: [
                Text("Operaciones"),
              ],
            ),
          ),
        ),
        Expanded(
          flex:2,
          child: Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Text(Resultado, style: TextStyle(
                  fontSize: 30, 
                  color: Colors.white,
                  ),
                  
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 100,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                filaBotones([
                  BotonModel(titulo: "%", metodo: (){
                    setState(() {
                      Resultado +="%";
                    });                    
                  } ),
                  BotonModel(titulo: "CE", metodo: (){
                    setState(() {
                      Resultado +="CE";
                    });                    
                  } ),
                  BotonModel(titulo: "C", metodo: (){
                    setState(() {
                      Resultado +="C";
                    });                    
                  } ),
                  BotonModel(titulo: "<--", metodo: (){
                    setState(() {
                      Resultado +="<--";
                    });                    
                  } )
                  ]),

                filaBotones([
                  BotonModel(titulo: "1/x", metodo: (){
                    setState(() {
                      Resultado +="1/x";
                    });                    
                  } ),
                  BotonModel(titulo: "x^2", metodo: (){
                    setState(() {
                      Resultado +="x^2";
                    });                    
                  } ),
                  BotonModel(titulo: "√x", metodo: (){
                    setState(() {
                      Resultado +="√x";
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
                      Resultado +="7";
                    });                    
                  } ),
                  BotonModel(titulo: "8", metodo: (){
                    setState(() {
                      Resultado +="8";
                    });                    
                  } ),
                  BotonModel(titulo: "9", metodo: (){
                    setState(() {
                      Resultado +="9";
                    });                    
                  } ),
                  BotonModel(titulo: "x", metodo: (){
                    setState(() {
                      Resultado +="x";
                    });                    
                  } )
                  ]),
                filaBotones([
                  BotonModel(titulo: "4", metodo: (){
                    setState(() {
                      Resultado +="4";
                    });                    
                  } ),
                  BotonModel(titulo: "5", metodo: (){
                    setState(() {
                      Resultado +="5";
                    });                    
                  } ),
                  BotonModel(titulo: "6", metodo: (){
                    setState(() {
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
                      Resultado +="1";
                    });                    
                  } ),
                  BotonModel(titulo: "2", metodo: (){
                    setState(() {
                      Resultado +="2";
                    });                    
                  } ),
                  BotonModel(titulo: "3", metodo: (){
                    setState(() {
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
                      Resultado +="±";
                    });                    
                  } ),
                  BotonModel(titulo: "0", metodo: (){
                    setState(() {
                      Resultado +="0";
                    });                    
                  } ),
                  BotonModel(titulo: ",", metodo: (){
                    setState(() {
                      Resultado +=",";
                    });                    
                  } ),
                  BotonModel(titulo: "=", metodo: (){
                    setState(() {
                      Resultado ="=";
                    });                    
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
