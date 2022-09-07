import 'package:flutter/material.dart';

class SignINForm extends StatefulWidget {
  const SignINForm({Key? key}) : super(key: key);

  @override
  State<SignINForm> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<SignINForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 233),
      appBar: AppBar(title: const Text('Sign in')),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in to your account',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Example@gmail.com',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        const snack=SnackBar(content: Text('Please enter your email'), backgroundColor: Colors.red);
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: '*********',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        const snack=SnackBar(content: Text('Please enter your password'),backgroundColor: Colors.red);
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      }
                      return null;
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    'Forgot Password',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        formKey.currentState!.validate();
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
