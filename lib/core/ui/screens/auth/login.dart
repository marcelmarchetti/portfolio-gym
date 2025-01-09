import 'package:flutter/material.dart';

import '../../../constants/navigation/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, Routes.signUp);
        },
        child: Container(color: Colors.green,),
      )
    );
  }
}
