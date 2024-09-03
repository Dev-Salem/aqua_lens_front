import 'dart:async';

import 'package:aqua_lens/features/scan/data/repository.dart';
import 'package:aqua_lens/features/scan/domain/detection_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScanNotifier extends AutoDisposeAsyncNotifier<List<DetectionResult>> {
  Future<DetectionResult> getDetectionResult(String imagePath) async {
    final repository = ref.watch(repositoryProvider);
    final result = await repository.getDetectionResult(imagePath);
    state = AsyncValue.data([result]);
    print("Result: $result");
    return result;
  }

  @override
  FutureOr<List<DetectionResult>> build() {
    return [];
  }
}

final scanProvider =
    AsyncNotifierProvider.autoDispose<ScanNotifier, List<DetectionResult>>(
  ScanNotifier.new,
);
