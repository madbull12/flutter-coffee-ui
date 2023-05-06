import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("/images/login-bg.jpg"), fit: BoxFit.cover),
      ),
      child: Center(
        child: _showLogin ? _buildLoginForm() : _buildRegisterForm(),
      ),
    ));
  }

  Widget _buildLoginForm() {
    return GlassmorphicContainer(
        borderRadius: 10.0,
        border: 1,
        blur: 7,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 255, 255).withAlpha(55),
              Color.fromARGB(255, 53, 53, 53).withAlpha(45),
            ],
            stops: const [
              0.5,
              1,
            ]),
        borderGradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xFF4579C5).withAlpha(100),
              Color(0xFFFFFFF).withAlpha(55),
              Color(0xFFF75035).withAlpha(10),
            ],
            stops: [
              0.06,
              0.95,
              1
            ]),
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(16.0),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Login',
                    style: TextStyle(fontSize: 32.0, color: Colors.white)),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform login action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                        0xFFC67C4E), // Sets the background color to #C67C4E
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextButton(
                  onPressed: toggleView,
                  child: const Text('Don\'t have an account? Register',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            )));
  }

  Widget _buildRegisterForm() {
    return GlassmorphicContainer(
        borderRadius: 10.0,
        border: 1,
        blur: 7,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 255, 255).withAlpha(55),
              Color.fromARGB(255, 53, 53, 53).withAlpha(45),
            ],
            stops: const [
              0.5,
              1,
            ]),
        borderGradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xFF4579C5).withAlpha(100),
              Color(0xFFFFFFF).withAlpha(55),
              Color(0xFFF75035).withAlpha(10),
            ],
            stops: [
              0.06,
              0.95,
              1
            ]),
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(16.0),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Register',
                    style: TextStyle(fontSize: 32.0, color: Colors.white)),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform login action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                        0xFFC67C4E), // Sets the background color to #C67C4E
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextButton(
                  onPressed: toggleView,
                  child: const Text('Already have an account? Login',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            )));
  }
}
