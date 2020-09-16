import 'package:ASmartDemo/screens/dashboardmenu.dart';
import 'package:ASmartDemo/screens/expand_layout.dart';
import 'package:ASmartDemo/screens/register.dart';
import 'package:ASmartDemo/screens/welcome_screen.dart';
import 'package:ASmartDemo/themes/styles.dart';
import 'package:flutter/material.dart';
import 'screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: DashboardMenu(),
    );
  }
}