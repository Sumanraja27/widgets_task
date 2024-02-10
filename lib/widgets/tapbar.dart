import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 50,
            title:const  Text("Second Screen"),
            bottom: const TabBar(
              tabs: [
                Tab(icon:Icon (Icons.contact_page),),
                Tab(icon:Icon (Icons.search),),
                Tab(icon:Icon (Icons.more_vert),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Stack(
                    children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child:const  Text('Sample Container-1'),
                    ),

                      Positioned(
                        top: 30,
                          left: 20,
                          child:Container(
                            height: 100,
                            width: 100,
                              child: const Image(
                              image: AssetImage('assets/codemagic-blog-header-flutter-2.png'),
                              fit:BoxFit.cover,

                            )
                          )),
                      Positioned(
                        bottom: 30,
                          right: 20,
                          child:Container(
                            height: 100,
                            width: 100,
                             decoration: BoxDecoration(
                               color: Colors.redAccent,
                               borderRadius: BorderRadius.circular(10)
                             ),

                            child: Text('Flutter Project'),
                            alignment: Alignment.center,
                          ))

                  ]
                ),
              ),
              const Tab(text: ("Search from the contact list"),),
              const Tab(text: ("Add more items in the toolbar"),

              ),
            ],
          ),
        )
    );
  }
}

