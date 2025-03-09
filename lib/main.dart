import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding/onboarding_screen1.dart';
import 'screens/onboarding/onboarding_screen2.dart';
import 'screens/onboarding//welcome/welcome.dart';
import 'screens/onboarding/welcome/bottom_sheet_widget.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/meal_logging_screen.dart';
import 'screens/home/progress_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/profile/settings_screen.dart';
import 'screens/profile/edit_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calorie Tracker',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Inter',
      ),
      initialRoute: '/', // Start with Splash Screen
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/WelcomeLightWidget': (context) => WelcomelightWidget(),
        '/BottomSheetWidget': (context) => BottomSheetWidget(),
        '/LoginScreen': (context) => LoginScreen(),
        // '/forgot-password': (context) => ForgotPasswordScreen(),
        // '/home': (context) => HomeScreen(),
        // '/meal-logging': (context) => MealLoggingScreen(),
        // '/progress': (context) => ProgressScreen(),
        // '/profile': (context) => ProfileScreen(),
        // '/settings': (context) => SettingsScreen(),
        // '/edit-profile': (context) => EditProfileScreen(),
      },
    );
  }
}
