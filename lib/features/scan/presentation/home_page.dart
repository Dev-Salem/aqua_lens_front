import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CameraAwesomeBuilder.awesome(
      saveConfig: SaveConfig.video(
        videoOptions: VideoOptions(enableAudio: false,
        quality: VideoRecordingQuality.highest)
      ),
      onMediaCaptureEvent: (p0) {
      },
    ));
  }
}
