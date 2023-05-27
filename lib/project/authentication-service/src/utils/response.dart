class Response {
  final int status;
  final String message;
  final dynamic data;

  Response({
    required this.status,
    required this.message,
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data,
    };
  }
}
