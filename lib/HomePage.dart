// ignore: file_names
import 'package:first/main.dart';
import 'package:flutter/material.dart';


void main() => runApp(const HomePage());


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: const Center(
            child: Text('Startseite'),
          )
        ),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (_) => MyApp())
            );
          },
        ),
      )
    );
  }
}



class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
              Aufgabe(),
            ], 
          ),
        ),
    );
  }
}


class Aufgabe extends StatefulWidget {
  const Aufgabe({ Key? key }) : super(key: key);

  @override
  _AufgabeState createState() => _AufgabeState();
}

class _AufgabeState extends State<Aufgabe> {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          boxShadow: const[
          BoxShadow (
            color: Colors.grey,
            blurRadius: 25.0, 
            spreadRadius: 5.0, 
            offset: Offset(
              0, 
              0, 
            ),
          )
        ],
          borderRadius: BorderRadius.circular(25),
          color: Colors.blue[200],
        ),
        height: 150,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: const Text(
            'Termine',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30, 
            ),
          ),
        ),
    );
  }
}