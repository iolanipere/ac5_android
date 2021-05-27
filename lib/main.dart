import 'package:flutter/material.dart';
import 'package:perez/tabs/primero.dart';
import 'package:perez/tabs/segundo.dart';
import 'package:perez/tabs/tercero.dart';


void main() {
  runApp(MaterialApp(
      title: "Usando Tabs",
      debugShowCheckedModeBanner: false,
      home: Inicio()));
} 
class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
} 
class InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  } 
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barra de Navegacion Inferior"),
        backgroundColor: Colors.black87,
      ),
      body: TabBarView(

        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.black87,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.pest_control_rodent_sharp ),
            ),
            Tab(
              icon: Icon(Icons.pest_control_sharp ),
            ),
            Tab(
              icon: Icon(Icons.sick_rounded),
            ),
          ],
          controller: controller,
        ),
      ), 
    ); 
  } 

} 