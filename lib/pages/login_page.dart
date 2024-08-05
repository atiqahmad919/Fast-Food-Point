import 'package:fds2/components/my_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Food Delivery App",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(
            height: 15,
          ),
          MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),
        ],
      ),
    );
  }
}
