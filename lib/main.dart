import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   
                    Padding(
                      padding:  EdgeInsets.fromLTRB(50, 50, 10, 20),
                      child: Container(
                        width:  screenWidth*0.30,
                        height: 150,
                        child: cart(),
                      ),
                    ),
                    Padding(
                      padding:     EdgeInsets.fromLTRB(10, 50, 30, 20),
                      child: Container(
                        width:  screenWidth*0.30,
                        height: 150,
                        child: cart(),
                      ),
                    )
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 20, 10, 20),
                      child: Container(
                        width: screenWidth*0.30,
                        height: 150,
                       child: cart(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 30,20),
                      child: Container(
                        width: screenWidth*0.30,
                        height: 150,
                        child: cart(),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 10, 0),
                      child: Container(
                        width:screenWidth*0.75 ,//325,
                        height: 150,
                        child: cart(),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ClipRect(
        child: BackdropFilter(
          filter:ImageFilter.blur(sigmaX:8,sigmaY: 8 ), 
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white,width: 0.5)
            ),
          ),
          ),
      ),
        
    );
  }
}
