import 'package:flutter/material.dart';
import 'onboarding_screen1.dart'; // Import previous screen
import 'welcome/welcome.dart'; // Import next screen

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Onboarding Image
            Image.asset(
              'assets/images/onboarding2.png', // Make sure this image exists in assets
              height: 250,
              width: 250,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),

            // Title
            const Text(
              'Effortless Tracking',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(13, 18, 32, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Subtitle
            const Text(
              'Easily log your meals, snacks, and water intake',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(110, 113, 121, 1),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),

            // Progress Indicator (Dots)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(Colors.grey), // Inactive
                _buildDot(const Color.fromRGBO(53, 204, 140, 1), isActive: true), // Active
                _buildDot(Colors.grey), // Inactive
              ],
            ),
            const SizedBox(height: 50),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      color: Color.fromRGBO(110, 113, 121, 1),
                      fontSize: 16,
                    ),
                  ),
                ),

                // Next Button (Circular Button)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomelightWidget()),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(53, 204, 140, 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create progress indicator dots
  Widget _buildDot(Color color, {bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
