// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:aqua_lens/features/scan/domain/detection_result.dart';

class DetectionCard extends StatelessWidget {
  final DetectionResult result;
  const DetectionCard({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: ListTile.divideTiles(tiles: [
                          ListTile(
                            title: Text('${result.itemCount} Microplastics'),
                          ),
                          ListTile(
                            title: Text(
                                '${result.averageAccuracy}% Average Accuracy'),
                          ),
                          ListTile(
                            title: Text('${result.maxAccuracy}% Max Accuracy'),
                          ),
                          ListTile(
                            title: Text('${result.minAccuracy}% Min Accuracy'),
                          ),
                        ], context: context)
                            .toList()));
              });
        },
        child: CustomDetectionCard(result: result, height: 414, width: 270));
  }
}

class CustomDetectionCard extends StatelessWidget {
  const CustomDetectionCard({
    super.key,
    required this.result,
    required this.height,
    required this.width,
    this.fromCamera = false
  });
  final DetectionResult result;
  final double height;
  final double width;
  final bool fromCamera;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(color: Colors.black54, blurRadius: 10, spreadRadius: 0)
            ]),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
                child:fromCamera?
                Image.file(
                File(result.imagePath),
                fit: BoxFit.fill,
              ):
                 Image.asset(
              result.imagePath,
              fit: BoxFit.cover,
            )),
            Positioned(
                bottom: 10,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                        width: 224.0,
                        height: 60.0,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade200.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${result.itemCount} Microplastics",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${result.averageAccuracy}% Accuracy",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                )),
          ],
        ));
  }
}
