// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HowPage extends StatelessWidget {
  final VoidCallback onNext;
  const HowPage({
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
            "How To Use AquaLens?",
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
                    "Prepare Your Environment",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.science,
                    color: Colors.white,
                  ),
                  subtitle: Text(
                    'some explanation some explanation some explanation some explanation',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const ListTile(
                  title: Text(
                    "Capture The Video",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  subtitle: Text(
                    'some explanation some explanation some explanation some explanation',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const ListTile(
                  title: Text(
                    "Wait For The Result",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.pending,
                    color: Colors.white,
                  ),
                  subtitle: Text(
                    'some explanation some explanation some explanation some explanation',
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
