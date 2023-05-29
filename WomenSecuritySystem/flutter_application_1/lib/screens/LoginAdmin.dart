import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginAdmin extends StatelessWidget {
  const LoginAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Security System'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Please enter username';

                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty ) {
                  return 'Please enter username';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
            ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('AdminHome');
      }, 
      child: Text('Login'),),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded), label: Text('Forgot Password'),)
          ]),
        ),
      ),
    );
  }
}


  



