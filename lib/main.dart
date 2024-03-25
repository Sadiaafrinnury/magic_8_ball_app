import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Colors.blue,
       appBar: AppBar(
         backgroundColor: Colors.blueAccent,
         elevation: 40,
         title: Text("Ask Me Anything",
         style: TextStyle(
             color: Colors.white,
         fontWeight: FontWeight.bold,
         fontSize: 30),),
       ),
       body: BallPage(),
     ),
   )
 );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: (){
            setState(() {
              ballNumber= Random().nextInt(5)+1;
            });
            print("I got clicked");
          },
          child: Image.asset(
              "Images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}
