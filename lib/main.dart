import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_future_button/future_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureButton(
              text: 'Submit',
              onPressed: () {
                print("Loaded");
              },
              onExecute: submit,
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> submit() async {
    print("Loading...");
    return Future.delayed(const Duration(seconds: 5)).then((value) {
      print("Loaded");
      return true;
    });
  }
}
