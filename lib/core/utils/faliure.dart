class Failure {
  final int? code;
  final String? message;

  Failure({this.code, required this.message});

  @override
  String toString() => message ?? 'error code:$code message:$message';
}
