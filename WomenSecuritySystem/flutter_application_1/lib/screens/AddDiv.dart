import 'package:flutter/material.dart';
class AddDiv extends StatelessWidget {
  const AddDiv({super.key});

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
      child: const Center(child: Text('Ottappalam')),
    ),
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Cherppulassery')),
    ),
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Perinthalmanna')),
    ),
     TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.local_police),  
            hintText: 'Enter Division',  
            labelText: 'division',  
            ),  
           ),
           
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new ElevatedButton(  
                child: const Text('Add'),  
                  onPressed: null,  
              )),  
  ],
)
        
        ),
        );
}
}