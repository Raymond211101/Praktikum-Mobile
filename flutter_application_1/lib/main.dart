import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),

    );
  }
  }

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posttest 1 Raymond",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
      body: Container(
        width: lebar/1.4,
        height: tinggi/4,
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(60, 175, 20, 10),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.red,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        
        child: const Text("Raymond Jonathan Damanik \n\n2009106057",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Times New Roman',
        ),
            )
          )
      );
  }
}