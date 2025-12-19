
import 'package:flutter/material.dart';
import 'package:prueba1_moviles3/screens/Ejercicio1Screen.dart';
import 'package:prueba1_moviles3/screens/Ejercicio2Screen.dart';
import 'package:prueba1_moviles3/screens/Ejercicio3Screen.dart';



void main() {
  runApp(AppPrueba());
}

class AppPrueba extends StatelessWidget {
  const AppPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Cuerpo());
  }
}

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  int indice = 0;
  List<Widget> paginas = [
    Ejercicio1screen(),
    Ejercicio2screen(),
    Ejercicio3screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (value) => setState(() {
          indice = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: "Ejercicio1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: "Ejercicio2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: "Ejercicio3",
          ),
        ],
      ),
    );
  }
}
