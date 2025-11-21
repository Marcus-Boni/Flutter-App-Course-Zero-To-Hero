import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String confirmedEmail = '';
  String confirmedPassword = '';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onLoginPressed();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    setState(() {
      confirmedEmail = controllerEmail.text;
      confirmedPassword = controllerPassword.text;
    });

    if (confirmedEmail.isNotEmpty && confirmedPassword.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both email and password.')),
      );
    }
  }
}
