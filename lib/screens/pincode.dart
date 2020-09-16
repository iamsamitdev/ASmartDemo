import 'package:ASmartDemo/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:pin_view/pin_view.dart';

class PinCode extends StatefulWidget {

  PinCode({
    Key key,
  }) : super(key: key);

  @override
  _PinCodeState createState() => _PinCodeState();

}

class _PinCodeState extends State<PinCode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('ยืนยันการเข้าใช้งาน')),
      ),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container (
          padding: EdgeInsets.all(10.0),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible (
                child: Column (
                  children: <Widget>[
                    Container(margin: EdgeInsets.symmetric(vertical: 15.0)),
                    Icon(Icons.email, size: 100.0, color: Theme.of(context).primaryColor),
                    Container(margin: EdgeInsets.symmetric(vertical: 15.0)),
                    Container (
                      width: MediaQuery.of(context).size.width * 4/5,
                      child: Text (
                        "กรุณาใส่รหัสที่ได้รับจากอีเมล์",
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.teal
                        ),
                      ),
                    ),
                    Container (
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: PinView (
                        count: 6, // count of the fields, excluding dashes
                        obscureText: false, // describes whether the text fields should be obscure or not, defaults to false
                        style: TextStyle (
                          // style for the fields
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500
                        ),
                        autoFocusFirstField: true,
                        // dashPositions: [3], // describes the dash positions (not indexes)
                        // sms: SmsListener (
                        //   // this class is used to receive, format and process an sms
                        //   from: "6505551212",
                        //   formatBody: (String body){
                        //     // incoming message type
                        //     // from: "6505551212"
                        //     // body: "Your verification code is: 123-456"
                        //     // with this function, we format body to only contain
                        //     // the pin itself
                        //     String codeRaw = body.split(": ")[1];
                        //     List<String> code = codeRaw.split("-");
                        //     return code.join();
                        //   }
                        // ),
                        submit: (String pin){

                          // showDialog (
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return AlertDialog (
                          //       title: Text("Pin received successfully."),
                          //       content: Text("Entered pin is: $pin")
                          //     );
                          //   }
                          // );

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Dashboard()
                            )
                          );

                        } // gets triggered when all the fields are filled
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ), // end Container()
    );
  }

}