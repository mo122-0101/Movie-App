
 import 'package:movie/core/network/error_message_model.dart';

class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;
  const ServerException({
    required this.errorMessageModel,
});
 }
 //لو انا هستخدم local dataSource
 class LocalDataSourceException implements Exception{
  final String message;
  const LocalDataSourceException({
    required this.message,
 });
 }