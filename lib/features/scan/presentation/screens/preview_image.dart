// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:aqua_lens/features/scan/presentation/controller/scan_notifier.dart';
import 'package:aqua_lens/features/scan/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviewImageScreen extends ConsumerWidget {
  final String imagePath;
  const PreviewImageScreen({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            height: 600,
            width: double.infinity,
            child: Image.file(File(imagePath)),
          ),
          TextButton.icon(
              onPressed: () async {
                final detectionResult = await ref
                    .read(scanProvider.notifier)
                    .getDetectionResult(imagePath);
                print(detectionResult);
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) {
                                      return const HomeScreen();
                                    }));
                                  },
                                  icon: const Icon(Icons.arrow_back))
                            ],
                          ),
                          ref.watch(scanProvider).isLoading
                              ? const CircularProgressIndicator()
                              : Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 400,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Image.asset(
                                        detectionResult.imagePath,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                        "Item Count:${detectionResult.itemCount} "),
                                    Text(
                                        "Avg Count:${detectionResult.averageAccuracy} "),
                                  ],
                                )
                        ],
                      );
                    });
              },
              label: const Text("Analysis"))
        ],
      ),
    );
  }
}
