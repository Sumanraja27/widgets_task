import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WTHelper{
  static void showSnackBar({
    String? title,required String message,
    Duration duration = const Duration(seconds: 30),
    Widget? icon,
}){
    Get.showSnackbar(
       GetSnackBar(borderRadius: 25.0,
         margin: const EdgeInsets.all(10),
         title: title,messageText: Text(message,),)
    );
  }
}