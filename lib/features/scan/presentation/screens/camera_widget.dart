import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

class CameraWidget extends StatelessWidget {
  const CameraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CameraAwesomeBuilder.awesome(
        onMediaTap: (p0) {
          p0.captureRequest.path;
        },
        saveConfig: SaveConfig.photo());
  }
}
