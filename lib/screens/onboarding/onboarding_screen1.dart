import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🎨 Onboarding Image Placeholder
            Container(
              width: screenWidth * 0.6,
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/onboarding1.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 30),

            // 🏆 Title
            Text(
              'Welcome!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            // 📜 Subtitle
            Text(
              'Congratulations on taking the first step toward a healthier you!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            // 🔵 Progress Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildDot(true),
                buildDot(false),
                buildDot(false),
              ],
            ),
            SizedBox(height: 30),

            // 🟢 Next Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding2');
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(20),
              ),
              child: Icon(Icons.arrow_forward, color: Colors.white),
            ),

            // ⏭ Skip Button
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🟣 Helper Function for Progress Dots
  Widget buildDot(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
