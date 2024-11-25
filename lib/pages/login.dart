import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email'),
            TextField(
              decoration: const InputDecoration(hintText: 'Enter your email'),
            ),
            const SizedBox(height: 16),
            const Text('Password'),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Enter your password'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Simulating login logic
                // Store login status in SharedPreferences
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('isLoggedIn', true);

                // Navigate to splash after login
                Navigator.pushReplacementNamed(context, '/splash');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            // Button to navigate to Register page
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  'Don\'t have an account? Register here!',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
