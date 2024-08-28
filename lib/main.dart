import 'package:aqua_lens/core/app_theme.dart';
import 'package:aqua_lens/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.light(),
        debugShowCheckedModeBanner: false,
        home: const OnboardingScreen());
  }
}
