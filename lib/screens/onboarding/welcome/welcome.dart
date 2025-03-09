import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:calorie_tracker/screens/auth/login_screen.dart';
import 'package:calorie_tracker/screens/onboarding/welcome/bottom_sheet_widget.dart';

class WelcomelightWidget extends StatefulWidget {
  const WelcomelightWidget({super.key});

  @override
  _WelcomelightWidgetState createState() => _WelcomelightWidgetState();
}

class _WelcomelightWidgetState extends State<WelcomelightWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 290,
              left: 62,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: SvgPicture.asset(
                      'assets/images/vector.svg',
                      semanticsLabel: 'vector',
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(13, 18, 32, 1),
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Start or sign in to your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(110, 113, 121, 1),
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 671,
              left: 24,
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(53, 204, 140, 1),
                      padding: const EdgeInsets.symmetric(horizontal: 134, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (context) => const BottomSheetWidget(),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Color.fromRGBO(13, 18, 32, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color.fromRGBO(53, 204, 140, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
