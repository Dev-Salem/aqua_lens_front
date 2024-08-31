import 'package:aqua_lens/features/scan/presentation/screens/home_screen.dart';
import 'package:aqua_lens/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HowScreen extends StatelessWidget {
  const HowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
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
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColorDark),
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                          color: Colors.white,
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
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).primaryColorDark)),
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
                height: 20,
              )
            ],
          ),
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

  // ListTile(
  //           title: const Text("Prepare Your Environment"),
  //           subtitle: Text(
  //             'Make sure you have enough light, and you are close enough to the object ',
  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           leading: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '1',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 30,
  //         ),
  //         ListTile(
  //           title: const Text("Take A Picture"),
  //           subtitle: Text(
  //             'Ensure that the microplastics are as visible as poss in your image',
  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           trailing: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '2',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 30,
  //         ),
  //         ListTile(
  //           title: Text(
             
  //             style: Theme.of(context).textTheme.titleLarge,
  //           ),
  //           subtitle: Text(

  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           leading: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '3',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),