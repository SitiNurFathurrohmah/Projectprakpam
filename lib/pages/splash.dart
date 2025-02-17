import 'package:flutter/material.dart';
import '/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _Splashpagestate();
}

class _Splashpagestate extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'The Movie App',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 50),
          const CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Future<void> navigateHome() async {
    await Future.delayed(const Duration(seconds: 3));
    final route = MaterialPageRoute(
      builder: (_) => const HomeScreen(),
    );
    Navigator.pushReplacement(context, route);
  }
}