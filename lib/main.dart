import 'package:fingerprint_auth/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/authentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // fontFamily: 'SheepingCats',
      home: AuthenticationPage(),
    );
  }
}

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 43, 100),
      body: SafeArea(child: 
      Center(child: 
      Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Login to সমৃদ্ধ's Den", style: TextStyle( fontFamily: 'SheepingCats', color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900,),),
        SizedBox(height: 28,),
        Text("Use your FingerPrint bruh!",style: TextStyle( fontFamily: 'BomberEscortItalic', color: Colors.white, fontSize: 15, fontWeight: FontWeight.w200,), ),
        SizedBox(height: 28,),
        Divider(
          color: Colors.white60,
        ),
        SizedBox(height: 28,),
        ElevatedButton.icon(
          onPressed: () async {
            bool auth = await Authentication.authentication();
            print("can authenticate: $auth");
            if(auth){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
            }

            
          }, 
          icon: Icon(Icons.fingerprint),
          label: Text("Authenticate"),),
      ],
      ),
      ),
      ),
    );
  }
}