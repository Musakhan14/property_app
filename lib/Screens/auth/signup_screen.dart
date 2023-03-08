// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:property_app/Screens/auth/login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Form(
            key: _formKey,
            // ignore: sized_box_for_whitespace
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
              ),
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                color: const Color(0xffEBEBEB),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            filled: true,
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            fillColor: Colors.white,
                            labelText: 'Name',
                            hintText: 'Enter your Name',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter an email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 102, 96, 96),
                              fontWeight: FontWeight.normal,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Confirm Password',
                            hintText: 'Enter your password',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Perform sign up logic here
                                String username = _usernameController.text;
                                String email = _emailController.text;
                                String password = _passwordController.text;
                                print(
                                    'Sign up successful: $username, $email, $password');
                              }
                            },
                            child: const Text('Sign Up'),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 50.0, // adjust this to the desired height
                          width: double
                              .infinity, // adjust this to the desired width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.facebook,
                                  color: Theme.of(context).primaryColor),
                              const SizedBox(width: 10.0),
                              const Text('Login with Facebook'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 50.0, // adjust this to the desired height
                          width: double
                              .infinity, // adjust this to the desired width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.google,
                                  color: Theme.of(context).primaryColor),
                              // Image.asset('assets/google_logo.png', height: 24.0),
                              const SizedBox(width: 10.0),
                              const Text('Login with Google'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already Have Account'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: const Text('LogIn'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
