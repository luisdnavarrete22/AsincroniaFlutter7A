import 'package:asincroniaflutternavarrete7a/services/mockapi.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'getFerrari.dart';
import 'getFisherPrice.dart';
import 'getHyundai.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Asincronía con Flutter - 7mo "A"';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // Define las diferentes propiedades con valores por defecto.
  // Actualiza estas propiedades cuando el usuario toque un FloatingActionButton.
  double _width = 50;
  double _height = 50;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListScreen(),
            Hyundai(),
            FisherPrice(),
          ]),
    ));
  }
}
