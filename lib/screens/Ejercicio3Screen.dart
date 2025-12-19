/* "Calcular la energía cinética de un objeto en movimiento, dada su masa y velocidad."

🔢 Variables a pedir:

Masa (kg).
Velocidad (m/s).
📐 Fórmula: Ec = ½ * masa * velocidad²

Si la velocidad es 0, mostrar en ALERT: *"El objeto está en reposo (energía = 0)."* */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prueba1_moviles3/screens/Ejercicio4Screen.dart';

class Ejercicio3screen extends StatelessWidget {
  const Ejercicio3screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 3"),
      ),
      body: formulario(context) ,
    );
  }
}
TextEditingController masa=TextEditingController();
TextEditingController velocidad=TextEditingController();
Widget formulario(context){
  return Column(children: [
    TextField(
      controller: masa,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese la masa(kg)")
      ),
    ),
    TextField(
      controller: velocidad,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese la velocidad (m/s)")
      ),
    ),
    FilledButton.icon(onPressed: ()=>calcular(context), label: Text("CALCULAR")),
    botonesNavegacion(context)
  ],);
}
void calcular(context){
  double velocidadcita=double.parse(velocidad.text);
  double masita=double.parse(masa.text);
  if (velocidadcita==0) {
    showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("ADVERTENCIA") ,
      content: Column(children: [
        Text("El objeto está en reposo (energía = 0)"),
      ],),
    );
  },);
  }else{
    double resultado=(0.5*masita)*(pow(velocidadcita, 2));
    showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("Exito") ,
      content: Column(children: [
        Text("La energía cinética de su objeto es ${resultado.toStringAsFixed(2)}"),
      ],),
    );
  },);
  }
}
Widget botonesNavegacion(context){
  return Column(children: [
    FilledButton.icon(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(context) => Ejercicio4screen(),)), label: Text("Ir ejercicio 4"))
  ],);
}