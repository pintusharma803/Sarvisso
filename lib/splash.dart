import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sarvisso_app/MyHomePage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Home Page"),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Make the image rounded
              ClipRRect(
                borderRadius: BorderRadius.circular(constraints.maxHeight * 0.15), // Circular radius (half of image height)
                child: Image.asset(
                  'assets/images/logo.png',
                  height: constraints.maxHeight * 0.55, // 30% of available height
                  width: constraints.maxHeight * 0.55, // Equal width for circular effect
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              // Responsive text styling
              Text(
                "Sarvisso...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10, // 5% of screen height
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 4, 68, 78),
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const MyHomePage(title: "Home Page"),
    );
  }
}
