import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:widgets_task/widgets/age_confirmation.dart';
import 'package:widgets_task/widgets/loading_test.dart';
import 'package:widgets_task/widgets/tapbar.dart';
import 'package:widgets_task/widgets/bottomnavigation.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Container(
              width: 60,
              height: 60,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:const DecorationImage(
                  image: AssetImage("assets/7123025_logo_google_g_icon.png"),
                  alignment: Alignment.bottomLeft
                ),
              ),

            ),
            const SizedBox(height: 20),


            /// Drawer List

            ListTile(
              leading: const Icon(Icons.all_inbox),
              title: const Text('All inboxes'),
              onTap: (){
                },
            ),

            ListTile(
              leading: const Icon(Icons.stay_primary_portrait),
              title: const Text('Primary'),
              onTap: (){
                },
            ),

            ListTile(
              leading: const Icon(Icons.star_purple500_rounded),
              title: const Text('Starred'),
              onTap: (){

              },
            ),

            ListTile(
              leading: const Icon(Icons.snooze_outlined),
              title: const Text('Snoozed'),
              onTap: (){
                },
            ),

            ListTile(
              leading: const Icon(Icons.label_important_outline),
              title: const Text('Important'),
              onTap: (){
                },
            ),

            ListTile(
              leading: const Icon(Icons.send),
              title: const Text('Send'),
              onTap: (){
                },
            ),

            const ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Scheduled'),
            ),

            const ListTile(
              leading: Icon(Icons.outbox),
              title: Text('Outbox'),
            ),

            const ListTile(
              leading: Icon(Icons.drafts),
              title:Text ('Draft'),
            ),

            const ListTile(
              leading: Icon(Icons.mail),
              title:Text('All mail'),
            ),

            const ListTile(
              leading: Icon(Icons.delete),
              title: Text('Spam'),
            ),

            const ListTile(
              leading: Icon(Icons.output),
              title: Text('Sign Out '),
            ),

          ],
        ),
      ),

      /// App bar

      appBar: AppBar(
        title: const Text(
          'First Flutter Project',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blueAccent,
        actions: const [
          Icon(Icons.settings),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Icon(Icons.delete),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Icon(Icons.more_vert),
        ],
      ),

      body:
        Padding(
        padding:  const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ///Container
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.indigo),
              width: 100.0,
              height: 100.0,
              alignment: Alignment.center,
              child: const Text("Welcome"),
            ),

            /// Increment Decrement
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.orange,
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      counter = max(counter-1,1);
                    });
                  },
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     setState(() {
                //       counter--;
                //     });
                //   },
                //   child: const Icon(
                //     Icons.add,
                //     size: 30,
                //   ),
                // ),
                Text(
                  '$counter',
                  style: const TextStyle(fontSize: 30),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     setState(() {
                //       counter++;
                //     });
                //   },
                //   child: const Icon(
                //     Icons.add,
                //     size: 30,
                //   ),
                // ),

                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),

            ///Elevated button

            ElevatedButton(
                onPressed: () {
                  Get.to(const SecondScreen());
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),

                        ),
                      )
                    ],
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black54, width: 3),
                ),
                child: const Text('Elevated Button 1')
            ),

            const SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              Get.to(const AgeConfirmationScreen());
            },
                child:const Text("Loading Text Button")
            ),

            const Padding(padding: EdgeInsets.all(10)),

            ElevatedButton(
                onPressed: (){
                  showAlertDialog(context);
                  },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.white12,width: 3),
                ),
                child: const Text('Click the Button')
            ),

            const Padding(padding: EdgeInsets.all(10)),

            ElevatedButton(
                onPressed:(){
                  Get.to ( const ThirdScreen());
                  },
                style: ElevatedButton.styleFrom(
                  side:const  BorderSide(color: Colors.white12,width: 3),
                ),
                child: const Text('Navigationbar')
            ),

            const Padding(padding: EdgeInsets.all(10)),

            ElevatedButton(
                onPressed: () {
                  showAlterFirstDialog(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white12,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.elliptical(0, 0)))),
                child: const Text('Elevated Button 2')),

            const Padding(padding: EdgeInsets.all(10)),

            ElevatedButton(
                onPressed:(){
                  Fluttertoast.showToast(msg:"Your account has been blocked",
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor:Colors.black12,
                  textColor:Colors.black,
                  fontSize:15);
                },
                style: ElevatedButton.styleFrom(
                  side:const  BorderSide(color: Colors.white12,width: 3),
                ),
                child: const Text('Toast Button')
            ),

            /// SnackBar Button
            const Padding(padding: EdgeInsets.all(10)),

            ElevatedButton(
                onPressed:(){
               var snackBar = SnackBar(
                    content:const  Text("This message is invalid"),
                 action: SnackBarAction(
                   label: 'Undo',
                   onPressed: (){},
                 ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black12),
                ),
                child:const Text('SnackBar Action')),

            const Padding(padding: EdgeInsets.all(10)),

            ///Text Button

            TextButton(onPressed: () {
              showAlterSecondDialog(context);
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.white12
                ),
                child: const Text('TextButton')
            ),



            const Padding(padding: EdgeInsets.all(10)),

            /// Outline Button

            OutlinedButton(
                onPressed: () {
                  showSimpleDialogOption(context);
                  },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black54, width: 3.0),
                ),
                child: const Text('Download')),

            const Padding(padding: EdgeInsets.all(30)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black45),
                  child: const Text("Flutter"),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black45),
                  child: const Text("Dart"),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black45),
                  child: const Text("Android Studio"),
                )
              ],
            ),

            const Padding(padding: EdgeInsets.all(30)),

            ///TextField

            const TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter Your name',
                border: OutlineInputBorder(),
              ),
            ),

            const Padding(padding: EdgeInsets.all(10)), /// using Space

            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Your Password',
                border: OutlineInputBorder(),
              ),
            ),

            const Padding(padding: EdgeInsets.all(30)),

            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  // prefixIcon: Icon(Icons.contact_page),
                  suffixIcon: Icon(Icons.verified),
                  // prefixIconColor: Colors.indigoAccent,
                  icon: Icon(Icons.person)),
            ),

            const Padding(padding: EdgeInsets.all(10)),

            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  // prefixIcon: Icon(Icons.security),
                  suffixIcon: Icon(Icons.security_update_good_rounded),
                  // prefixIconColor: Colors.red,
                  icon: Icon(Icons.lock)),
              keyboardType: TextInputType.number,
            ),

            const Padding(padding: EdgeInsets.all(30)),

            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Feedback',
              ),
            ),

            const Padding(padding: EdgeInsets.all(20)),

            ///RichText

            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'To Make this following statement ,'),
                  TextSpan(
                    text: ("The RichText Selectable ."),
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'This button has two callback functions')
                ],
              ),
            ),
          ],
        )),
      ),


      /// FloatingActionButton

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          },
        backgroundColor: Colors.lightBlue,
        icon: const Icon(Icons.add),
         label: const Text('Add'),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

       /// BottomNavigation Bar

    );

  }
}


///BasicAlertDialog

showAlertDialog(BuildContext context) {
/*  Widget okButton = TextButton(onPressed: (){
    Navigator.pop(context, 'OK');
  },
    child:  const Text("ok"),
  );
  AlertDialog alert = AlertDialog(
    title:  const Text("Error"),
    content:const Text("This message is not valid"),
    actions: [
      okButton,
    ],
  );*/
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: const Text("This message is not valid"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();

                },
                child:const  Text('Ok'))
          ],
        );
      });
}

///Confirmation AlertDialog

showAlterFirstDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Warning"),
          content: const Text("This site can’t be reached"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child:const  Text('Cancel')
            ),
            TextButton(onPressed: (){},
                child: const Text("Continue"),)
          ],

        );


      }
      );
}

/// DropDown Dialog Option

showSimpleDialogOption(BuildContext context) async {
  showDialog(
    context: context,
    builder:(BuildContext context) {
      return SimpleDialog(
          title :const Text('Select Model Type'),
          children:[
            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('1.Oneplus'),
            ),

            SimpleDialogOption(
              onPressed:(){
                Navigator.of(context).pop();
              },
              child:const  Text('2.Redmi'),
            ),

            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('3.iphone'),
            ),

            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child:const  Text('4.Oppo'),
            ),

            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child:const  Text('5.Realme'),
            ),

            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child:const Text('6.Samsung'),
            ),
            SimpleDialogOption(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child:const  Text('7.Others'),
            )
          ]
      );
      },);
}


///TextFiled

showAlterSecondDialog(BuildContext context){
   {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:const  Text('Text Field Dilog Box'),
            content: TextField(
              onChanged: (value) {
                },
              decoration:const  InputDecoration(hintText: "Enter your name"),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Get.back();
                  },
                  child: const Text("Sumit")),
            ],
          );
        });
   }
}