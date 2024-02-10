import 'dart:convert';

import 'package:hive/hive.dart';

part 'sign_in_response.g.dart';

class SignInResponse {
  String? token;
  String? sessionId;
  String? refreshToken;
  bool? isSuccess;
  int? successCode;
  dynamic reason;
  String? result;
  DateTime? expires;
  AppUser? appUser;

  SignInResponse({
    this.token,
    this.sessionId,
    this.refreshToken,
    this.isSuccess,
    this.successCode,
    this.reason,
    this.result,
    this.expires,
    this.appUser,
  });

  SignInResponse copyWith({
    String? token,
    String? sessionId,
    String? refreshToken,
    bool? isSuccess,
    int? successCode,
    dynamic reason,
    String? result,
    DateTime? expires,
    AppUser? appUser,
  }) =>
      SignInResponse(
        token: token ?? this.token,
        sessionId: sessionId ?? this.sessionId,
        refreshToken: refreshToken ?? this.refreshToken,
        isSuccess: isSuccess ?? this.isSuccess,
        successCode: successCode ?? this.successCode,
        reason: reason ?? this.reason,
        result: result ?? this.result,
        expires: expires ?? this.expires,
        appUser: appUser ?? this.appUser,
      );

  factory SignInResponse.fromRawJson(String str) => SignInResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignInResponse.fromJson(Map<String, dynamic> json) => SignInResponse(
    token: json["Token"],
    sessionId: json["SessionId"],
    refreshToken: json["RefreshToken"],
    isSuccess: json["IsSuccess"],
    successCode: json["SuccessCode"],
    reason: json["Reason"],
    result: json["Result"],
    expires: DateTime.parse(json["Expires"]),
    appUser: AppUser.fromJson(json["AppUser"]),
  );

  Map<String, dynamic> toJson() => {
    "Token": token,
    "SessionId": sessionId,
    "RefreshToken": refreshToken,
    "IsSuccess": isSuccess,
    "SuccessCode": successCode,
    "Reason": reason,
    "Result": result,
    "Expires": expires!.toIso8601String(),
    "AppUser": appUser!.toJson(),
  };
}


@HiveType(typeId: 1)
class AppUser {
  @HiveField(1)
  String employeeId;
  @HiveField(2)
  String mobileNumber;
  @HiveField(3)
  String employeeName;
  @HiveField(4)
  dynamic branchName;
  @HiveField(5)
  String emailId;
  @HiveField(6)
  String branchId;
  @HiveField(7)
  dynamic roleId;
  @HiveField(8)
  dynamic roleName;
  @HiveField(9)
  dynamic screenAccess;

  AppUser({
    required this.employeeId,
    required this.mobileNumber,
    required this.employeeName,
    required this.branchName,
    required this.emailId,
    required this.branchId,
    required this.roleId,
    required this.roleName,
    required this.screenAccess,
  });

  AppUser copyWith({
    String? employeeId,
    String? mobileNumber,
    String? employeeName,
    dynamic branchName,
    String? emailId,
    String? branchId,
    dynamic roleId,
    dynamic roleName,
    dynamic screenAccess,
  }) =>
      AppUser(
        employeeId: employeeId ?? this.employeeId,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        employeeName: employeeName ?? this.employeeName,
        branchName: branchName ?? this.branchName,
        emailId: emailId ?? this.emailId,
        branchId: branchId ?? this.branchId,
        roleId: roleId ?? this.roleId,
        roleName: roleName ?? this.roleName,
        screenAccess: screenAccess ?? this.screenAccess,
      );

  factory AppUser.fromRawJson(String str) => AppUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
    employeeId: json["EmployeeId"],
    mobileNumber: json["MobileNumber"],
    employeeName: json["EmployeeName"],
    branchName: json["BranchName"],
    emailId: json["EmailId"],
    branchId: json["BranchId"],
    roleId: json["RoleId"],
    roleName: json["RoleName"],
    screenAccess: json["ScreenAccess"],
  );

  Map<String, dynamic> toJson() => {
    "EmployeeId": employeeId,
    "MobileNumber": mobileNumber,
    "EmployeeName": employeeName,
    "BranchName": branchName,
    "EmailId": emailId,
    "BranchId": branchId,
    "RoleId": roleId,
    "RoleName": roleName,
    "ScreenAccess": screenAccess,
  };
}

