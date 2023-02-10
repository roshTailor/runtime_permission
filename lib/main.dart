import 'package:flutter/material.dart';
import 'package:runtime_permission/screen/RuntimePermission.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: const RunTimePer(),
    ),
  );
}

