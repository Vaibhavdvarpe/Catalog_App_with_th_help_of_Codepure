import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/images/loginimage.png", fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  // labelText: "username",
                  hintText: "Username",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  // labelText: "password",
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: TextButton.styleFrom())
            ],
          ),
        )
      ]),
    );
  }
}
