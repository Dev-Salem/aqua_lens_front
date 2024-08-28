import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

const explanation1 =
    "Traditional methods of detection often involve complex laboratory procedures that can take days or even weeks to complete, delaying the availability of results.";
const explanation2 =
    "These methods can be expensive due to the specialized equipment, reagents, and laboratory facilities required.";

class WhyPage extends StatelessWidget {
  final VoidCallback onNext;
  const WhyPage({
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
            "Why Use AquaLens?",
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
                    "Time-consuming:",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    explanation1,
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const ListTile(
                  title: Text(
                    "Costly",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    explanation2,
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
          const SizedBox(
            height: 24,
          ),
          Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/ims.webp"))
              .animate()
              .fadeIn(
                duration: 800.ms,
                delay: 3500.ms,
              ),
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
