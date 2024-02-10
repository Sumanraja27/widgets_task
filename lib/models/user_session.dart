import 'package:hive/hive.dart';
import 'package:widgets_task/models/sign_in_response.dart';

part 'user_session.g.dart';

@HiveType(typeId:0)
class UserSession extends HiveObject{
  UserSession({required this.token, required this.userDetails,});

  @HiveField(0)
  String token;
  @HiveField(1)
  AppUser userDetails;

  Map<String, dynamic> toJson() => {
    'Token' : token,
    'AppUser' : userDetails.toJson(),
  };
}