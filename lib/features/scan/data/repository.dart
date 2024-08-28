import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataRepository {
  final Dio client;

  DataRepository({required this.client});

  Future<dynamic> getDetectionResult(String filePath) async {
    final fromData = FormData.fromMap({
      'media': await MultipartFile.fromFile(filePath, filename: 'media.mp4')
    });
    final response = await client.post('path', data: fromData);
    return response.data;
  }
}

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});
final repositoryProvider = Provider<DataRepository>((ref) {
  return DataRepository(client: ref.watch(dioProvider));
});


final getDetectionResultProvider = FutureProvider.family<dynamic, String>((ref, filePath) async {
  return ref.read(repositoryProvider).getDetectionResult(filePath);
});