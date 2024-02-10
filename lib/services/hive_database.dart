import 'package:hive/hive.dart';
import 'package:widgets_task/models/sign_in_response.dart';
import 'package:widgets_task/models/user_session.dart';

class HiveDataBase{
 final  storedBox =Hive.box('hiveStorage');
 final userSessionBox = Hive.box<UserSession>('userSessionStorage');

 final String _usersSessionKey = 'userSession';



 Future<void> setUserSession({required String token, required AppUser userDetails}) async {
   final userSession = UserSession(token: token, userDetails: userDetails);
   userSessionBox.put(_usersSessionKey, userSession);
 }

 UserSession? getUserSession() {
   return userSessionBox.get(_usersSessionKey);
 }
}