import 'dart:ui';

import 'package:aqua_lens/features/onboarding/presentation/widgets/start_page.dart';
import 'package:aqua_lens/features/onboarding/presentation/widgets/what_page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final VideoPlayerController _videoPlayerController;
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/jellyfish.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setPlaybackSpeed(0.4)
      ..play()
      ..setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: VideoPlayer(_videoPlayerController))),
        PageView(
          controller: _pageController,
          children: [
            StartPage(
              onNext: () => _pageController.nextPage(
                  duration: Durations.short4, curve: Curves.easeInOut),
            ),
            WhatPage(
              onNext: () => _pageController.nextPage(
                  duration: Durations.short4, curve: Curves.easeInOut),
            )
          ],
        )
      ],
    ));
  }
}
