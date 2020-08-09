//docker page
// ignore: camel_case_types
import 'package:flutter/material.dart';
String os_name ;
String os_name_old ;
String os_name_new ;  
String image_name ;
class docker extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue1 = 'container';
  String dropdownValue1container = 'run';
  String dropdownValue1network = 'create';
  String dropdownValue1volume = 'create';
  String dropdownValue1image = 'pull';
  String dropdownValue1engine = 'activate';
  String dropdownValue1builder = 'build';
  String dropdownValue1context = 'create';
  String dropdownValue1config = 'create';
  String dropdownValue1node = 'promote';
  String dropdownValue1plugin = 'create';
  String dropdownValue1secret = 'create';
  String dropdownValue1service = 'create';
  String dropdownValue1stack = 'deploy';
  String dropdownValue1swarm = 'init';
  String dropdownValue1system = 'prune';
  //String dropdownValue1trust= '';
 //PART 2 #######
 // String dropdownValue1container_run_name = 'random';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<String>(
          
          value: dropdownValue1,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1 = newValue;
            });
          },
          items: <String>['builder', 'config', 'container', 'context','engine' , 'image', 'network','node','plugin','secret','service','stack','swarm','system','trust','volume',]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'container')
          DropdownButton<String>(
          value: dropdownValue1container,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1container = newValue;
            });
          },
          items: <String>['run', 'rm', 'start','stop', 'restart','kill','pause','unpause', 'rename']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1container == 'run')
         TextField(onChanged: (a){
           os_name = a; 
         },
         decoration: InputDecoration(hintText: "Name for Container"),
         autocorrect: true,
         ),
         if (dropdownValue1container == 'run')
         TextField(onChanged: (b){
           image_name = b; 
         },
         decoration: InputDecoration(hintText: "Image Name With Version eg. centos:latest"),
         autocorrect: true,
         ),
         if (dropdownValue1container == 'rm')
         TextField(onChanged: (a){
           os_name = a; 
         },
         decoration: InputDecoration(hintText: "Name for Container"),
         autocorrect: true,
         ),
         if (dropdownValue1container == 'start')
         TextField(onChanged: (a){
           os_name = a; 
         },
         decoration: InputDecoration(hintText: "Name for Container"),
         autocorrect: true,
         ),
        if (dropdownValue1container == 'stop')
         TextField(onChanged: (a){
           os_name = a; 
         },
         decoration: InputDecoration(hintText: "Name for Container"),
         autocorrect: true,
         ),
         if (dropdownValue1container == 'rename')
         TextField(onChanged: (a){
           os_name_old = a; 
         },
         decoration: InputDecoration(hintText: "Old Name for Container"),
         autocorrect: true,
         ),
         if (dropdownValue1container == 'rename')
         TextField(onChanged: (a){
           os_name_new = a; 
         },
         decoration: InputDecoration(hintText: "New Name for Container"),
         autocorrect: true,
         ),
         
         /* DropdownButton<String>(
          value: dropdownValue1container,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1container = newValue;
            });
          },
          items: <String>['run', 'rm', 'start','stop', 'restart','kill','pause','unpause', 'rename']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),*/
        if (dropdownValue1 == 'network')
        DropdownButton<String>(
          value: dropdownValue1network,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1network = newValue;
            });
          },
          items: <String>['create', 'rm', 'connect','disconnect', 'inspect','ls','prune']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'volume')
        DropdownButton<String>(
          value: dropdownValue1volume,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1volume = newValue;
            });
          },
          items: <String>['create', 'rm','inspect','ls','prune']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'image')
        DropdownButton<String>(
          value: dropdownValue1image,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1image = newValue;
            });
          },
          items: <String>['pull', 'rm','inspect','ls','prune','build','history', 'import','load','push','save','tag']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'engine')
        DropdownButton<String>(
          value: dropdownValue1engine,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1engine = newValue;
            });
          },
          items: <String>['activate','check','update']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'builder')
        DropdownButton<String>(
          value: dropdownValue1builder,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1builder = newValue;
            });
          },
          items: <String>['prune','build']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'config')
        DropdownButton<String>(
          value: dropdownValue1config,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1config = newValue;
            });
          },
          items: <String>['create','inspect','ls','rm']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
         if (dropdownValue1 == 'context')
        DropdownButton<String>(
          value: dropdownValue1context,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1context = newValue;
            });
          },
          items: <String>['create','export','import','inspect','ls','rm','update','use']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'node')
        DropdownButton<String>(
          value: dropdownValue1node,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1node = newValue;
            });
          },
          items: <String>['demote','inspect','ls','promote','ps','rm','update']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'plugin')
        DropdownButton<String>(
          value: dropdownValue1plugin,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1plugin = newValue;
            });
          },
          items: <String>['create','disable','enable','inspect','install','ls','push','rm','set','upgrade']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'secret')
        DropdownButton<String>(
          value: dropdownValue1secret,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1secret = newValue;
            });
          },
          items: <String>['create','inspect','ls','rm']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),  
        if (dropdownValue1 == 'stack')
        DropdownButton<String>(
          value: dropdownValue1stack,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1stack = newValue;
            });
          },
          items: <String>['rm','ps','deploy','services','ls']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'swarm')
        DropdownButton<String>(
          value: dropdownValue1swarm,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1swarm = newValue;
            });
          },
          items: <String>['init','ca','join','join-token','leave','unlock','unlok-key','update']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'system')
        DropdownButton<String>(
          value: dropdownValue1system,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1system = newValue;
            });
          },
          items: <String>['prune','events','info','df']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 
        if (dropdownValue1 == 'service')
        DropdownButton<String>(
          value: dropdownValue1service,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1service = newValue;
            });
          },
          items: <String>['create','inspect','log','ls','ps','rm','rollback','scale','update']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ), 

      ],
    );
  }
}