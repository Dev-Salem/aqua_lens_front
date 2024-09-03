import 'package:aqua_lens/features/onboarding/presentation/screens/how_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text("AquaLens",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
                .animate()
                .fadeIn(
                    duration: 1000.ms, curve: Curves.fastEaseInToSlowEaseOut),
            const Text("Microplastics, Detected, Defeated.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
                .animate()
                .fadeIn(
                    delay: 1000.ms,
                    duration: 1000.ms,
                    curve: Curves.fastEaseInToSlowEaseOut),
            const SizedBox(
              height: 64,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context)
                            .primaryColorDark
                            .withOpacity(0.4))),
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context)
                            .primaryColorDark
                            .withOpacity(0.6))),
                Image.asset(
                  "assets/recylce.png",
                  height: 350,
                )
              ],
            ).animate().fadeIn(
                delay: 1500.ms,
                duration: 1100.ms,
                curve: Curves.fastEaseInToSlowEaseOut),
            const Spacer(),
            SizedBox(
              width: 300,
              child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColorDark)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (
                      context,
                    ) {
                      return const HowScreen();
                    }));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ).animate().slideY(
                begin: 1.5,
                end: 0,
                duration: 600.ms,
                delay: 1800.ms,
                curve: Curves.fastEaseInToSlowEaseOut),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
