import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo()
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FIRE"),),
      body: formularioLogin()
    );
  }
}

Widget formularioLogin(){
  TextEditingController _email = TextEditingController();

TextEditingController _password = TextEditingController();
  return Column( 
    children: [
      Text("LOGIN"),
      TextField(
        controller: _email,
        decoration: InputDecoration(
          label: Text("email"),
          border:OutlineInputBorder()
        ),
      ),

      TextField(
        controller: _password,
        decoration: InputDecoration(
          label: Text("password"),
          border:OutlineInputBorder()
        ),
      ),

      FilledButton.icon(onPressed: ()=>(), label: Text("Login"), icon: Icon(Icons.login),)
    ],
  );
}