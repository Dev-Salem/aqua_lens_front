// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

const definition =
    "Microplastics are tiny plastic particles, less than 5mm in size, that pollute our water sources. They come from the breakdown of larger plastics and everyday products.";
const explanation =
    "Microplastics harm marine life and disrupt ecosystems. They also enter our bodies through water and seafood, potentially leading to health issues like inflammation and cellular damage. Detecting and reducing microplastics is essential for protecting both the environment and our health.";

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
            height: 100,
          ),
          ...ListTile.divideTiles(
              color: const Color.fromARGB(0, 215, 173, 173),
              tiles: [
                const ListTile(
                  title: Text(
                    "What Are Microplastics?",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    definition,
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const ListTile(
                  title: Text(
                    "Why Should We Care?",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    explanation,
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ]
                  .animate(interval: 500.milliseconds)
                  .fadeIn(
                    duration: 700.milliseconds,
                    delay: 2.seconds,
                  )
                  .slideY(begin: 0.1, end: 0, duration: 400.ms)),
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
                    delay: 4.seconds,
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
