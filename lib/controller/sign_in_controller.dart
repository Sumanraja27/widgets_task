import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:widgets_task/services/api_client.dart';
import 'package:widgets_task/widgets/appbar.dart';
import 'package:widgets_task/models/sign_in_request.dart';
import 'package:widgets_task/models/sign_in_response.dart';
import 'package:widgets_task/utlis/helper.dart';
import 'package:widgets_task/services/hive_database.dart';

class SignInController extends GetxController {
  final signInRequest = SignInRequest();
  final passwordVisible = false.obs;
  final isLoading = false.obs;
  final sigInFormKey = GlobalKey<FormState>();
  HiveDataBase storeData = HiveDataBase();



  void signInApi() async {
    if (!sigInFormKey.currentState!.validate()) {
      return;
    }
    sigInFormKey.currentState!.save();
    isLoading.value = true;
    signInRequest.info = "string";
    SignInResponse? response = await ApiClient().signIn(jsonEncode(signInRequest));
    if (response != null) {
      isLoading.value = false;
      if (response.isSuccess!) {
        if (response.token != null && response.appUser != null) {
          storeData.setUserSession(token: response.token!, userDetails: response.appUser!);
          await Hive.openBox("typeId: 1");
          isLoading.value = false;
          Get.offAll(() => const Product());
        } else {
          isLoading.value = false;
          WTHelper.showSnackBar(title: 'Failed', message: 'Something went wrong.');
          debugPrint("response null");
        }
      } else {
        WTHelper.showSnackBar(message: response.reason.toString(), title: 'Login Failed');
      }
    } else {
      isLoading.value = false;
      WTHelper.showSnackBar(title: 'Failed', message: 'Something went wrong.');
      debugPrint("response null");
    }
  }
}
