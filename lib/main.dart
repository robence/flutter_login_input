import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    labelText: 'Full Name',
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                    labelText: 'Phone Number',
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    labelText: 'Email Address',
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
