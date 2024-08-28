// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  final VoidCallback onNext;
  const StartPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "AquaLens",
            style: GoogleFonts.manrope(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize),
          ).animate().fadeIn(
              begin: 0,
              duration: 1.seconds,
              delay: 500.ms,
              curve: Curves.easeInOut),
          const Spacer(),
          Text("A clearer future, one image at a time.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400))
              .animate()
              .fadeIn(
                  begin: 0,
                  duration: 1.seconds,
                  delay: 1500.ms,
                  curve: Curves.easeInOut),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FilledButton(
                    onPressed: onNext,
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 16),
                    ))
                .animate()
                .fadeIn(
                    begin: 0,
                    duration: 1.seconds,
                    delay: 2500.ms,
                    curve: Curves.easeInOut),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
