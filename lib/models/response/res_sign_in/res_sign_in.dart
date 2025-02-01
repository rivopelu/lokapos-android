import 'package:freezed_annotation/freezed_annotation.dart';

part 'res_sign_in.freezed.dart';

part 'res_sign_in.g.dart';

@freezed
class ResSignIn with _$ResSignIn {
  const factory ResSignIn({
    required String accessToken,
  }) = _ResSignIn;

  factory ResSignIn.fromJson(Map<String, dynamic> json) =>
      _$ResSignInFromJson(json);
}
