/* Colocar una imagen LOCAL como fondo en el segundo ejercicio. */
/* Crear una app para calcular las gotas por minuto para infundir un suero en un tiempo determinado.

🔢 Variables a pedir:

Volumen a infundir (mL).
Tiempo (horas).
Factor de goteo (ej: 20 gotas/mL para macrogotero).
📐 Fórmula: Gotas/min = (Volumen * Factor) / (Tiempo * 60)

⚠️ Si el tiempo es 0, mostrar en un ALERT: "Error: el tiempo debe ser mayor a 0." */
import 'package:flutter/material.dart';

class Ejercicio2screen extends StatelessWidget {
  const Ejercicio2screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/fondoEj1.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: formulario(context),
      ),
    );
  }
}
TextEditingController volumen=TextEditingController();
TextEditingController tiempo=TextEditingController();
TextEditingController goteo=TextEditingController();
Widget formulario(context){
  return Column(children: [
    TextField(
      controller: volumen,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese el volumen a fundir(mL)")
      ),
    ),
    TextField(
      controller: tiempo,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese el tiempo (horas)")
      ),
    ),
    TextField(
      controller: goteo,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Ingrese el Factor de goteo(ej: 20 gotas/mL para macrogotero)")
      ),
    ),
    FilledButton.icon(onPressed: ()=>calcular(context), label: Text("CALCULAR"))
  ],);
}
void calcular(context){
  double tiempito=double.parse(tiempo.text);
  double volumencito=double.parse(volumen.text);
  double goteito=double.parse(goteo.text);
  if (tiempito==0) {
    showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("Error") ,
      content: Column(children: [
        Text("El tiempo debe ser mayor a 0"),
      ],),
    );
  },);
  }else{
    double resultado=(volumencito*goteito)/(tiempito*60);
    showDialog(context: context, builder:(context) {
    return AlertDialog(
      title:Text("Gotas por minuto") ,
      content: Column(children: [
        Text("Las gotas por minuto para fundir son ${resultado.toStringAsFixed(2)}"),
      ],),
    );
  },);
  }
}

/* Fórmula: Gotas/min = (Volumen * Factor) / (Tiempo * 60) */