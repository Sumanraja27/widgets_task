import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sign_in_controller.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController signInController = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:  Form(
            key: signInController.sigInFormKey,
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage("assets/login Screen 2.jpg")),
                const Text("Login Page",style:TextStyle(color: Colors.black,
                  fontWeight:FontWeight.w300,fontSize:30,
                ),
                ),

              const   SizedBox(height: 20,),

                 /// Email
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    hintText: "Email",
                  ),
                  onSaved: (value){
                    signInController.signInRequest.emailAddress = value;
                  },
                ),
                const SizedBox(height: 30),
               Row(
                 children: [
                   Expanded(
                     child: TextFormField(
                       decoration: const InputDecoration(
                         hintText: "Password",
                         prefixIcon: Icon(Icons.lock),
                       ),
                       onSaved: (value){
                         signInController.signInRequest.password = value;
                         },

                     ),
                   ),
                   const Align(
                     child: Text("Forgot?",
                       style: TextStyle(color: Colors.indigo),
                     ),
                   ),
                 ],
               ),

                const SizedBox(height: 25),

                ElevatedButton(
                  onPressed: (){
                  signInController.signInApi();
                },
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",style:TextStyle(color:Colors.black,fontSize:15),
                          textAlign:TextAlign.center,)
                      ],
                    ),
                    ),


                const  Padding(padding: EdgeInsets.all(10)),

                Container(
                  alignment: Alignment.center,
                  child:const  Text("Or login with..."),
                ),

                const  Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),color: Colors.black12
                    ),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.black12,width:2)
                      ),
                      child:const Image(
                        image: AssetImage("assets/7611770.png"),
                        width:30,
                        height:50,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          color: Colors.black12
                      ),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.black12,width:2)
                      ),
                      child:const Image(
                        image: AssetImage("assets/facebook.png"),
                        width:30,
                        height:50,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.black12,width:2)
                        ),
                        child:const Image(
                          image: AssetImage("assets/apple.png"),
                          width:30,
                          height:50,
                        ),
                    )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
