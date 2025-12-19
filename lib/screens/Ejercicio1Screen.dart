/* 🚀Vista Principal
Barra superior:

Mostrar un botón en la barra superior.

Al presionarlo, debe desplegarse la siguiente información:

Título: Ejercicios de Programación  
Programador: Juan Paz  
Carrera: Desarrollo de Software  */
import 'package:flutter/material.dart';

class Ejercicio1screen extends StatelessWidget {
  const Ejercicio1screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Ejercicio 1"),
            Text(""),
            Text(""),
            FilledButton.icon(onPressed: ()=>mostrarMensaje(context), label: Text("Desplegar"),)
          ],
        ),
      ),
    );
  }
}
void mostrarMensaje(context){
  showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("Ejercicios de Programación") ,
      content: Column(children: [
        Text("Programador: Luis Castillo"),
        Text("Carrera:Desarrollo de Software")
      ],),
    );
  },);
}
