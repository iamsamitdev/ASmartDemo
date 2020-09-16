import 'package:ASmartDemo/screens/termpolicy.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            // call this method here to hide soft keyboard
            FocusScope.of(context).unfocus();
          },
          child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('assets/images/logo.png')
              image: NetworkImage('https://www.setaswall.com/wp-content/uploads/2018/01/720x1440-Wallpaper-128.jpg'),
              fit: BoxFit.fill
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/astaff_logo.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                          decoration: InputDecoration(
                            // icon: Icon(
                            //   Icons.supervised_user_circle,
                            //   size: 28,
                            // ),
                            labelText: 'รหัสพนักงาน',
                            // hintText: 'กรุณากรอกรหัสพนักงาน 10 หลัก'
                            // contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(32.0),
                            // ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                          decoration: InputDecoration(
                            // icon: Icon(
                            //   Icons.supervised_user_circle,
                            //   size: 28,
                            // ),
                            labelText: 'เลขบัตรประชาชน',
                            // contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(32.0),
                            // ),
                            // hintText: 'กรุณากรอกบัตรประชาชน 13 หลัก'
                          ),
                        ),
                      ],
                    ),
                  ), 
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => TermPolicy()
                    )
                  );
                 },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    'ลงทะเบียน', 
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}