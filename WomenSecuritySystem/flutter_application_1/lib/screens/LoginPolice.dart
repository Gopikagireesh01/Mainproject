import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPolice extends StatelessWidget {
  const LoginPolice({super.key});

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
                if(value == null || value.isEmpty) {
                  return 'Please enter password';

                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
            ),
            ),
             ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('PoliceHome');
      }, 
      child: Text('Login'),),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded), label: Text('Forgot Password'),)
          ]),
        ),
      ),
    );
  }
}

