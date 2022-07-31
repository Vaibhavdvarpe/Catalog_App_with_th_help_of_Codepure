import 'package:catalogapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/loginimage.png", fit: BoxFit.cover),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    // labelText: "username",
                    hintText: "Username",
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    // labelText: "password",
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Login"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 40)))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
