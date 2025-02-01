import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_sign_in.freezed.dart';
part 'req_sign_in.g.dart';

@freezed
class ReqSignIn with _$ReqSignIn {
  const factory ReqSignIn({
    required String email,
    required String password,
  }) = _ReqSignIn;

  factory ReqSignIn.fromJson(Map<String, dynamic> json) =>
      _$ReqSignInFromJson(json);
}