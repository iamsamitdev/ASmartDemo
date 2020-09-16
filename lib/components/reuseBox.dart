import 'package:ASmartDemo/utils/constants.dart';
import 'package:flutter/material.dart';

class ReuseBox extends StatefulWidget {

  ReuseBox({@required this.txtMenu, this.color, @required this.icon, this.onPress});

   // กำหนด properties เพื่อรับค่า
  final String txtMenu;
  final Color color;
  final IconData icon;
  final Function onPress;

  @override
  _ReuseBoxState createState() => _ReuseBoxState();
}

class _ReuseBoxState extends State<ReuseBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: widget.color,
          child: InkWell(
            onTap: widget.onPress,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(widget.icon, size:iconSize, color:colorIconMenu,),
                  SizedBox(height: sizeboxHeight),
                  Text(widget.txtMenu, style: kmenuTextStyle,)
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

