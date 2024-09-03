import 'package:aqua_lens/features/scan/domain/detection_result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataRepository {
  final Dio client;

  DataRepository({required this.client});
  Future<String> getHello() async {
    final respone = await client.get("http://192.168.0.102:8000/api/scan/");
    print("My Respone: =====$respone\n");
    return respone.data as String;
  }

  Future<DetectionResult> getDetectionResult(String filePath) async {
    final fromData = FormData.fromMap({
      'image': await MultipartFile.fromFile(filePath, filename: 'myImage.jpg')
    });
    final test = await client.get("http://192.168.0.102:8000/api/scan/");
    print("====================Get Result: $test============================");
    final response = await client.post("http://192.168.0.102:8000/api/scan/",
        data: fromData);
    print(response.data);
    return DetectionResult.fromMap(response.data as Map<String, dynamic>);
  }
}

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});
final repositoryProvider = Provider<DataRepository>((ref) {
  return DataRepository(client: ref.watch(dioProvider));
});

final getDetectionResultProvider =
    FutureProvider.family<dynamic, String>((ref, filePath) async {
  return ref.read(repositoryProvider).getDetectionResult(filePath);
});
