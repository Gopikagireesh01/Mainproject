import 'package:flutter/material.dart';
class Addcategory extends StatelessWidget {
  const Addcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Security System'),
      ),
      body: SafeArea(
        child: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Social Media')),
    ),
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Work Space')),
    ),
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Journey')),
    ),
     TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.email),  
            hintText: 'Enter category',  
            labelText: 'category',  
            ),  
           ),
           
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new ElevatedButton(  
                child: const Text('Submit'),  
                  onPressed: null,  
              )),  
  ],
)
        
        ),
        );
}
}
      
    
  
