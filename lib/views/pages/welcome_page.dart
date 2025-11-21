import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FittedBox(
              child: Text(
                'Welcome to the App',
                style: TextStyle(
                  fontSize: 100,
                  letterSpacing: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Lottie.asset('assets/lotties/Loading40_Paperplane.json'),
          SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            style: FilledButton.styleFrom(minimumSize: Size(200, 50)),
            child: Text('Get Started'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            style: TextButton.styleFrom(minimumSize: Size(200, 50)),
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
