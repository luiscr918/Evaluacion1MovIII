/* Crea una app que calcule cuántos gramos de proteína debe consumir una persona al día según su peso y si hace ejercicio o no.

🔢 Datos a pedir:
Peso (en kilogramos)
¿Haces ejercicio regularmente? (Sí / No)
🧮 Fórmula:
Si NO hace ejercicio → proteína = peso × 0.8
Si SÍ hace ejercicio → proteína = peso × 1.6
Mostrar los resultados en un ALERT */
import 'package:flutter/material.dart';
import 'package:prueba1_moviles3/screens/Ejercicio5Screen.dart';

class Ejercicio4screen extends StatelessWidget {
  const Ejercicio4screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 4"),
      ),
      body: formulario(context),
    );
  }
}
TextEditingController peso=TextEditingController();
TextEditingController ejercicio=TextEditingController();
Widget formulario(context){
  return Column(children: [
    TextField(
      controller: peso,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese su peso(kg)")
      ),
    ),
    TextField(
      controller: ejercicio,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("¿Haces ejercicio?(SI/NO)")
      ),
    ),
    FilledButton.icon(onPressed: ()=>calcular(context), label: Text("CALCULAR")),
    botonesNavegacion(context)
  ],);
}
/* Si NO hace ejercicio → proteína = peso × 0.8
Si SÍ hace ejercicio → proteína = peso × 1.6 */
void calcular(context){
  double pesito=double.parse(peso.text);
  double resultado=0;
  if (ejercicio.text=="SI"||ejercicio.text=="si") {
    resultado=pesito*1.6;
  }else{
    resultado=pesito*0.8;
  }
  showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("Resultado") ,
      content: Column(children: [
        Text("Los gramos de proteína debe consumir  al día son ${resultado.toStringAsFixed(2)}"),
      ],),
    );
  },);
}
Widget botonesNavegacion(context){
  return Column(children: [
    FilledButton.icon(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(context) => Ejercicio5screen(),)), label: Text("Ir ejercicio 5"))
  ],);
}