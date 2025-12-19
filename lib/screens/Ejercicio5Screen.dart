/* Usar el siguiente enlace para presentar una lista.
 Indicar por lo menos 3 datos  donde uno de ellos  sea una imagen */
import 'dart:convert';

import 'package:flutter/material.dart';

class Ejercicio5screen extends StatelessWidget {
  const Ejercicio5screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 5"),
      ),
      body: Listar(context),
    );
  }
}
Future<List<dynamic>> leerLista(context) async {
  final jsonString=
  await DefaultAssetBundle.of(context).loadString("assets/data/datita.json");

  return jsonDecode(jsonString)['platillos'];
}
Widget Listar(context){
  return FutureBuilder(
    future: leerLista(context), 
    builder:(context, snapshot) {
      if (snapshot.hasData) {
        List data=snapshot.data!;
        return ListView.builder(
          itemCount: data.length,
          itemBuilder:(context, index) {
            final item=data[index];
            return ListTile(
              title: Text(item['nombre']),
              subtitle: Column(children: [
                Text("Descripción: ${item['descripcion']}"),
                Image.network(item['imagen'])
              ],),
            );
          },);
      }else{
        return CircularProgressIndicator();
      }
    },);
}
