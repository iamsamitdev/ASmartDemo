import 'package:ASmartDemo/components/reuseBox.dart';
import 'package:flutter/material.dart';

class DashboardMenu extends StatefulWidget {
  DashboardMenu({Key key}) : super(key: key);

  @override
  _DashboardMenuState createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INDHOLD'),
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: <Widget>[
             Expanded(
               child: Row(
                 children: <Widget>[
                   ReuseBox(
                     txtMenu: 'Home',
                     color: Colors.teal,
                     icon: Icons.home,
                     onPress: () { print('Press home');},
                   ),
                   ReuseBox(
                    txtMenu: 'About',
                     color: Colors.green,
                     icon: Icons.info,
                    onPress: () { print('Press about');},
                   ),
                 ],
               )
             ),
            Expanded(
               child: Row(
                 children: <Widget>[
                   ReuseBox(
                    txtMenu: 'Service',
                     color: Colors.brown,
                     icon: Icons.search,
                    onPress: () { print('Press service');},
                   ),
                   ReuseBox(
                     txtMenu: 'Product',
                     color: Colors.purple,
                     icon: Icons.alarm,
                    onPress: () { print('Press product');},
                   ),
                 ],
               )
             ),
            Expanded(
               child: Row(
                 children: <Widget>[
                   ReuseBox(
                    txtMenu: 'Profile',
                     color: Colors.pink,
                     icon: Icons.account_box,
                    onPress: () { print('Press profile');},
                   ),
                   ReuseBox(
                    txtMenu: 'Setting',
                     color: Colors.blue,
                     icon: Icons.settings,
                     onPress: () { print('Press settings');},
                   ),
                 ],
               )
             ),
           ],
         ),
       ),
    );
  }
}