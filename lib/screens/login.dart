import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showLogin = true;

  void toggleView() {
    setState(() {
      _showLogin = !_showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: _showLogin ? _buildLoginForm() : _buildRegisterForm(),
      ),
    ));
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Login', style: TextStyle(fontSize: 32.0)),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Perform login action
          },
          child: Text('Login'),
        ),
        SizedBox(height: 16.0),
        TextButton(
          onPressed: toggleView,
          child: Text('Don\'t have an account? Register'),
        ),
      ],
    );
  }

  Widget _buildRegisterForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Register', style: TextStyle(fontSize: 32.0)),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Perform registration action
          },
          child: Text('Register'),
        ),
        SizedBox(height: 16.0),
        TextButton(
          onPressed: toggleView,
          child: Text('Already have an account? Login'),
        ),
      ],
    );
  }
}
