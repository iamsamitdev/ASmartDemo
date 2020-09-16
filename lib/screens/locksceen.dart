import 'package:ASmartDemo/screens/dashboard.dart';
import 'package:ASmartDemo/screens/widgets/Numpad.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // ไว้เรียกใช้ส่วนการ lock screen เป็นแนวตั้ง

class LockScreen extends StatefulWidget {

  LockScreen({Key key}) : super(key: key);

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {

  int length = 6;

  onChange(String number){
    if(number.length == length){
      // TODO
      print(number);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard()
        )
      );

    }
    // print(number);
  }

  @override
  Widget build(BuildContext context) {

    // ตั้งค่าล็อก Screen เป็นแนวตั้ง
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Lock Screen'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(icon: Icon(Icons.close), onPressed: (){})
                ),
              ],
            ),
            Image.asset(
              'assets/images/astaff_logo.png',
              width: 80,
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'กรุณาใส่รหัสผ่าน',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            Numpad(length: length, onChange: onChange,)
          ],
        ),
      ),
    );
  }
}