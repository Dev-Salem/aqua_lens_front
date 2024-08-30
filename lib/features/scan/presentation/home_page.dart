import 'package:aqua_lens/features/scan/data/repository.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
        body: CameraAwesomeBuilder.awesome(
      progressIndicator: const CircularProgressIndicator.adaptive(),
      sensorConfig: SensorConfig.single(
          sensor: Sensor.position(SensorPosition.back),
          flashMode: FlashMode.none),
      saveConfig: SaveConfig.photo(),
      onMediaTap: (mediaCapture) {
        print(mediaCapture.status);
      },
      onMediaCaptureEvent: (p0) {
        if (p0.status == MediaCaptureStatus.success &&
            p0.isPicture &&
            p0.captureRequest.path != null) {
          // ref.read(getDetectionResultProvider.call(p0.captureRequest.path!));
        }
      },
    ));
  }
}
