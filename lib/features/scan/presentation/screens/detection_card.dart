import 'package:flutter/material.dart';

class DetectionCard extends StatelessWidget {
  const DetectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/ims.webp",
                  fit: BoxFit.cover,
                )),
                const Positioned(
                  bottom: 10,
                  child: SizedBox(
                    child: Text(
                      "12 Microplastics | 82.% Avg Accuracy",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  1,
                                  1,
                                ),
                                blurRadius: 20,
                                spreadRadius: 20)
                          ]),
                    ),
                  ),
                )
              ],
            ));
  }
}