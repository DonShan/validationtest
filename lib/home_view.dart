import 'package:flutter/material.dart';
import 'package:validationtest/validator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final fromKey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    String? _email;
    String? _password;

    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("Here to go", style: TextStyle(fontSize: 30)),
              SizedBox(height: 5),
              Text("Welcomed", style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter your email"),
                onSaved: (value) => _email = value?.trim(),
                // validator: FieldValidator.validateEmail(_email!),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter your password"),
                onSaved: (value) => _password = value?.trim(),
                //validator: FieldValidator.validateEmail(_password!),
              ),

              //    const SizedBox(height: 20),
              // TextFormField(
              //   decoration:
              //       InputDecoration(labelText: "Enter your Phone number"),
              //   validator: (value) {
              //     if (value!.isEmpty ||
              //         !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
              //             .hasMatch(value!)) {
              //       return "Enter your correct phone number";
              //     } else {
              //       return null;
              //     }
              //   },
              // ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        if (fromKey.currentState!.validate()) {
                          final snackBar =
                              SnackBar(content: Text("Submitting from"));
                          // _scaffoldKey.currentState!.
                        }
                      },
                      child: const Text("Sign up")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
