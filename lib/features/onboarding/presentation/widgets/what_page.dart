// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatPage extends StatelessWidget {
  final VoidCallback onNext;
  const WhatPage({
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
            "Understanding Microplastics",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.displaySmall!.fontSize),
          ).animate().fadeIn(
              begin: 0,
              duration: 1.seconds,
              delay: 500.ms,
              curve: Curves.easeInOut),
          const SizedBox(
            height: 24,
          ),
          Text(
                  'Microplastics are tiny plastic particles that pollute water sources, harming marine life and entering our food chain.',
                  // textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400))
              .animate()
              .fadeIn(
                  begin: 0,
                  duration: 1.seconds,
                  delay: 1200.ms,
                  curve: Curves.easeInOut),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FilledButton(
                    onPressed: onNext,
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 16),
                    ))
                .animate()
                .fadeIn(
                    begin: 0,
                    duration: 1.seconds,
                    delay: 1900.ms,
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
