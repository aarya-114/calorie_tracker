import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:calorie_tracker/screens/auth/login_screen.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton(
            iconPath: 'assets/icons/google_icon.svg', // Ensure correct path
            text: 'Sign in with Google',
            onTap: () {
              // TODO: Handle Google sign-in
            },
          ),
          const SizedBox(height: 15),
          _buildButton(
            iconPath: 'assets/icons/email_icon.svg', // Ensure correct path
            text: 'Sign in with Email',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildButton({required String iconPath, required String text, required VoidCallback onTap}) {
    return ElevatedButton.icon(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      icon: SvgPicture.asset(
        iconPath,
        height: 20,
        width: 20,
      ),
      label: Text(text, style: const TextStyle(fontSize: 14)),
    );
  }
}
