import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  var stringResponse;

  Future fetchData() async {
    print('hello1');
    http.Response response;
    http.Response postResponse1;

    postResponse1 = await http.post(
      Uri.parse('https://khelaahobe.com/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'phone': '01600223852',
        'password': '123456',
      }),
    );

    var postData;

    postData = json.decode(postResponse1.body);
    String requestToken = postData['token']['plainTextToken'];
    //print(post_data);

    response = await http.get(
        Uri.parse('https://khelaahobe.com/api/auth/flutter/category'),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + requestToken,
        });
    print(response.statusCode);
    if (response.statusCode >= 200) {
      setState(() {
        stringResponse = json.decode(response.body);
      });
      //print(stringResponse);
    }
  }

  @override
  void initState() {
    fetchData();
    print('hello');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(bottom: 25.0),
            ),
            submitButton(),
            SizedBox(
              height: 20,
            ),
            Text(stringResponse.toString()),
            Text('hello')
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || !value.contains('@')) {
          return 'please enter a valid email';
        }
      },
      onSaved: (value) {
        email = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      validator: (value) {
        if (value == null || value.length < 3) {
          return 'password length must be 4';
        }
      },
      onSaved: (value) {
        password = value!;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();
          print('email $email and pass $password');
          Navigator.pushNamed(context, '/home');
        }
      },
      child: Text('submit'),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
      ),
    );
  }
}
