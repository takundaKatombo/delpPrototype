import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(height: 50),
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.1,
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                    hintText: 'Username', labelText: 'Username'),
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.1,
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: 'Password', labelText: 'Password'),
              )),
          ElevatedButton(
            //comment
            onPressed: () {
              Navigator.pushNamed(
                  context, '/home'); //todo: implement login logic
            },
            child: Text('Login'),
          ),
        ]),
      ),
    );
  }
}
