import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(255, 5, 43, 100),
      body: Center(child: Text("Welcome to সমৃদ্ধ's Den", style: TextStyle( fontFamily: 'SheepingCats', color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900,),),),
        
    );
  }
}