import 'package:aqua_lens/core/app_theme.dart';
import 'package:aqua_lens/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:aqua_lens/features/scan/data/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(),
  );
  WidgetsFlutterBinding.ensureInitialized();
  final repository = DataRepository(client: Dio());
  await repository.getHello();
  runApp(const ProviderScope(child: MainApp()));
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
