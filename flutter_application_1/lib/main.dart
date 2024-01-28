// ignore_for_file: use_key_in_widget_constructors, todo

import 'dart:math';

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                height: 100,width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 3)
                ),
                child: Text("Container 1"),
              ),
              Container(
                height: 100,width: 100,
                alignment: Alignment.center,
                transformAlignment: Alignment.center,
                transform: Matrix4.rotationZ(0.8),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("Container 2"),
              )
            ],),
            Column(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100, width: 100,
                    color: Colors.yellow,
                    alignment: Alignment.bottomCenter,
                    child: Text("Container 3"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,width: 100,
                    color: Colors.blue,
                    alignment: Alignment.centerRight,
                    child: Text("Container 4"),
                  ),
                ),
              ),
            ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        border: Border.all(width:3 ,color: Colors.white)
                      ),
                      child: Text("Container 5",style: TextStyle(color: Colors.white),),
                    ),
                    Container(height: 100,width: 100,),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    Container(height: 100,width: 100,),
                    Expanded(
                      child: Container(
                        height: 100,width: 100,
                        color: Colors.red,
                        alignment: Alignment.topLeft,
                        child: Text("Con 6",style: TextStyle(fontSize: 30),),
                      ),
                    ),
                  ],
                ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
