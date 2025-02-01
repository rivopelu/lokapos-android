// lib/features/auth/services/auth_service.dart
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lokapos/constans/endpoint.dart';
import 'package:lokapos/models/request/req_sign_in/req_sign_in.dart';
import 'package:lokapos/models/response/res_sign_in/res_sign_in.dart';
import 'package:lokapos/services/http_service.dart';

class AuthService {
  final HttpService _httpService;
  final _storage = const FlutterSecureStorage();

  AuthService(this._httpService);

  Future<String?> getToken() async {
    return await _storage.read(key: 'token');
  }

  Future<ResSignIn> signIn(ReqSignIn request) async {
    final response = await _httpService.post<Map<String, dynamic>>(
      ApiConstants.signIn(),
      data: request.toJson(),
    );

    final signInResponse = ResSignIn.fromJson(
      response.data!['response_data'],
    );

    await _storage.write(
      key: 'token',
      value: signInResponse.accessToken,
    );

    return signInResponse;
  }

  Future<void> logout() async {
    await _storage.delete(key: 'token');
  }
}
