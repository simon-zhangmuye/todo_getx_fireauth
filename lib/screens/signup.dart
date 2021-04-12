import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_fireauth/controllers/authController.dart';

import 'login.dart';

class Signup extends GetWidget<AuthController> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Email'),
                controller: emailController,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
                controller: passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text('Sign Up'),
                onPressed: () {
                  controller.createUser(
                      emailController.text, passwordController.text);
                },
              ),
              SizedBox(
                height: 5,
              ),
              FlatButton(
                child: Text('Log In'),
                onPressed: () {
                  Get.to(Login());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
