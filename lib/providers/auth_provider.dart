// lib/features/auth/providers/auth_provider.dart
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lokapos/models/request/req_sign_in/req_sign_in.dart';
import 'package:lokapos/services/http_service.dart';

import '../services/auth_service.dart';

part 'auth_provider.freezed.dart';

// State untuk mengelola auth
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    String? token,
    String? error,
  }) = _AuthState;
}

// Provider untuk AuthService
final authServiceProvider = Provider((ref) {
  return AuthService(HttpService());
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return AuthNotifier(authService);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(const AuthState()) {
    checkAuthStatus();
  }

  Future<void> checkAuthStatus() async {
    final token = await _authService.getToken();
    if (token != null) {
      state = state.copyWith(
        isAuthenticated: true,
        token: token,
      );
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      if (kDebugMode) {
        print("MASUK");
      }
      final response = await _authService.signIn(
        ReqSignIn(
          email: email,
          password: password,
        ),
      );
      print(response);
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        token: response.accessToken,
      );
    } catch (e) {

      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        isAuthenticated: false,
      );
    }
  }

  Future<void> logout() async {
    try {
      state = state.copyWith(isLoading: true);
      await _authService.logout();
      state = const AuthState(); // Reset ke state awal
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // Method untuk clear error
  void clearError() {
    state = state.copyWith(error: null);
  }
}
