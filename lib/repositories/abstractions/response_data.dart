import 'package:equatable/equatable.dart';
import 'package:voluntiersapp/ui/helpers/http_helper.dart';

class ResponseData<T> extends Equatable {
  T? data;
  bool success;
  ResultStatusCode? statusCode;
  String? errorMessage;

  ResponseData({
    this.data,
    required this.success,
    this.statusCode,
    this.errorMessage,
  });

  @override
  String toString() {
    return 'ResponseData(data: $data, success: $success, statusCode: $statusCode, errorMessage: $errorMessage)';
  }

  @override
  List<Object?> get props => [
        data,
        success,
        statusCode,
        errorMessage,
      ];
}
