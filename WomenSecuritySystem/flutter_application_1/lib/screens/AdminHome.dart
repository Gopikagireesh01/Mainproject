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
      home: AdminHome(),
      
    );
  }
}


class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Women Security System'),
      ),
      body: SafeArea(
        child: Column(children:  [Text('Women Security System', style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),),
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('ViewUser');
        
      }, child: Text('View User Details'),),
      
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('ViewGuardian');
          
      }, child: Text('Guardian Details'),),

      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('AllComp');
        },
       child: Text('All Complaints'),),

      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('UserReg');
      }, child: Text('Add User'),),
       ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('AddPolice');
      }, child: Text('Add Police'),),
       
       ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('AddDiv');
      }, child: Text('Add/Edit Division'),),
       ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('AddCategory');
      }, child: Text('Category'),)
      
      
      
      ]),),
    );
  }
}