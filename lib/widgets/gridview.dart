import 'package:flutter/material.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({super.key});

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('GridView'),
      ),
      body: GridView.count(
        padding:const  EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing:20,
        crossAxisCount: 3,
        children: [
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:Image.asset("assets/666201.png"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Tooltip(
              message: "Box-2",
              child: Text("Box No 2"),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Text("Box NO 3"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Text("Box No 4"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Text("Box No 5"),
          ),
          Container(
            padding:const  EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const  Text("Box No 6"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Text("Box No 7"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Text("Box No 8"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const Text("Box No 9"),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Text("Box No 10"),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const  Text("Box No 11"),
          ),
          Container(
            padding:const  EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child:const  Text("Box No 12"),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Text("Box No 13"),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Text("Box No 14"),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Text("Box No 15"),
          ),
        ],
      ),
    );
  }
}
