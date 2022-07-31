import 'package:catalogapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
    }
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset("assets/images/loginimage2.png", fit: BoxFit.cover),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      // labelText: "username",
                      hintText: "Username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be Empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      // labelText: "password",
                      hintText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be Empty";
                      } else if (value.length < 6) {
                        return "Password lenght should be atleast 6 characters";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: const Text("Login"),
                  //     style:
                  //         TextButton.styleFrom(minimumSize: const Size(150, 40))),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
