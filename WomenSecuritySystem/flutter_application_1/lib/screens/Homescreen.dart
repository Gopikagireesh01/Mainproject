import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


 main() {

  runApp(MyApp());
  
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,


      ),
      home: Homescreen(),
      
    );
  }
}


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Security System'),
      ),
       backgroundColor: Colors.white,
      body: SafeArea(child: Column(children:  [Text('Home Screen', style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),),
      ElevatedButton(onPressed: (){
          
      }, child: Text('SOS'),),
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('LoginAdmin');
        
      }, child: Text('Admin Login'),),
      
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('LoginPolice');
          
      }, child: Text('Police Login'),),

      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('LoginUser');
        },
       child: Text('User Login'),),

      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('UserReg');
      }, child: Text('User Register'),)
      
      
      
      ]),),
    );
  }
}