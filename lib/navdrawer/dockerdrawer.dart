import 'package:flutter/material.dart';

//drawer for main page69-

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                Text(
                  'docker',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
                Text(
                  'kuvernetes menu',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/dockube.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('docker'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('kubernetes'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
