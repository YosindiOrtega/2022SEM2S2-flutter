import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/boton.model.dart';

Widget filaBotones(List<BotonModel> lista){
  List<Widget> listaBotones =[];
  lista.forEach((element) {
  listaBotones.add(ElevatedButton(
          onPressed: element.metodo,
          child: Text (element.titulo)));
  });
  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listaBotones);
}
