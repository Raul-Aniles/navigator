import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    debugShowCheckedModeBanner: false,
  ));
} //Fin main

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio ferreteria'),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amberAccent, onPrimary: Colors.black),
          child: const Text('Mostrar Usuarios'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
} // Primera pagina

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(children: [
        Card(
          child: ListTile(leading: Icon(Icons.account_circle, color: darkBlue), title: Text("Usuario1"), subtitle: Text("Raúl Esteban Aniles Macias")),
          elevation: 10,
          shadowColor: darkBlue,
          margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        ),
        Card(
          child: ListTile(leading: Icon(Icons.account_circle, color: darkBlue), title: Text("Usuario2"), subtitle: Text("Macias Aniles Esteban Raúl")),
          elevation: 10,
          shadowColor: darkBlue,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            onPrimary: Colors.white,
          ),
          child: const Text('Regresar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          },
        ),
      ]),
    );
  }
} // Segunda pagina
