 import 'package:flutter/material.dart';

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