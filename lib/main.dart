import 'package:ASmartDemo/screens/register.dart';
import 'package:ASmartDemo/themes/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: Register(),
    );
  }
}