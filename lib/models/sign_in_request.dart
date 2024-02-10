import 'dart:convert';

class SignInRequest {
  SignInRequest({
    this.emailAddress,
    this.password,
    this.info,
  });

  String? emailAddress;
  String? password;
  String? info;

  SignInRequest copyWith({
    String? emailAddress,
    String? password,
    String? info,
  }) =>
      SignInRequest(
        emailAddress: emailAddress ?? this.emailAddress,
        password: password ?? this.password,
        info: info ?? this.info,
      );

  factory SignInRequest.fromRawJson(String str) => SignInRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignInRequest.fromJson(Map<String, dynamic> json) => SignInRequest(
    emailAddress: json["EmailAddress"],
    password: json["Password"],
    info: json["Info"],
  );

  Map<String, dynamic> toJson() => {
    "EmailAddress": emailAddress,
    "Password": password,
    "Info": info,
  };
}
