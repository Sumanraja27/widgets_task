import 'package:flutter/material.dart';

class CustomerLoading extends StatelessWidget{
  const CustomerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Dashboard"),
      ),
      body: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(5),
        ),
        child: const Text("Hi,Welcome",
          style: TextStyle(color:Colors.black,fontSize:30,fontWeight: FontWeight.w500),
        ),
      ),
    );

  }


}