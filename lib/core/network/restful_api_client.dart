import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///single configured [Dio] instance shared by every repo.
///add base url, timeouts and interceptors (auth, logging, retry) here.
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );
  ref.onDispose(dio.close);
  return dio;
});
