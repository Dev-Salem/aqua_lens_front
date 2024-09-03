import 'package:aqua_lens/features/scan/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HowScreen extends StatelessWidget {
  const HowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromRGBO(1, 114, 178, 1),
                  Color.fromRGBO(0, 22, 69, 1)
                ])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "How to use AquaLens?",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).animate().fadeIn(duration: 300.ms),
              const SizedBox(
                height: 80,
              ),
              ...List.generate(texts.length, (int index) {
                return ListTile(
                  minVerticalPadding: 20,
                  leading: Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    texts[index][0],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    texts[index][1],
                    style: const TextStyle(color: Colors.white),
                  ),
                ).animate().scaleXY(
                    begin: 0,
                    end: 1,
                    duration: 900.ms,
                    curve: Curves.fastEaseInToSlowEaseOut,
                    delay: (400 * index).ms);
              }),
              const Spacer(),
              SizedBox(
                width: 300,
                child: FilledButton(
                    style: ButtonStyle(
                        foregroundColor: WidgetStatePropertyAll(
                            Theme.of(context).primaryColor),
                        backgroundColor:
                            const WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (
                        context,
                      ) {
                        return const HomeScreen();
                      }));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ],
    ));
  }
}

final texts = [
  [
    'Prepare Your Environment',
    "Make sure you have enough light, and you are close enough to the object ",
  ],
  [
    "Take A Picture",
    "Ensure that the microplastics are as much visible as possible in your image"
  ],
  [
    "Let Us Do The Work",
    'Our state-of-the-art model will detect and quantify all the microplastics',
  ]
];
