import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:widgets_task/models/sign_in_response.dart';
import 'package:widgets_task/utlis/constant.dart';



class ApiClient {
  final _client = http.Client();
  final String _baseUrlV1= HRMSConstant.modbaseUrlV1;
  final _timeLimit =const Duration(seconds: 30);



  Future<SignInResponse?> signIn(Object jsonObject) async {

    try{
      var url = Uri.parse('${_baseUrlV1}auth/accounts/token');
      final response = await _client.post(url, headers: {"Content-Type": "application/json"},
          body: jsonObject).timeout(_timeLimit);
      if (response.statusCode == HRMSConstant.isStatusSuccess) {
        // ignore_for_file: unrelated_type_equality_checks
        var responseBody = response.body;
        return SignInResponse.fromJson(json.decode(responseBody));
      }else{
        return null;
      }
    } catch(e,s) {
      log("error : $e" );
      log("error : $s" );
    }
    return null;
  }
  }
