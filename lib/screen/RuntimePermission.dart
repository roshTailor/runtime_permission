import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class RunTimePer extends StatefulWidget {
  const RunTimePer({Key? key}) : super(key: key);

  @override
  State<RunTimePer> createState() => _RunTimePerState();
}

class _RunTimePerState extends State<RunTimePer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get run time permission"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: ListView(
          children: [
            ElevatedButton(
              child: Text("${Permission.camera}"),
              onPressed: () async {
                var status = await Permission.camera.request();
                if (status.isGranted) {
                  message(message: "Camera permission is granted");
                }
              },
            ),
            ElevatedButton(
              child: Text("${Permission.location}"),
                        onPressed: () async {
                var status = await Permission.location.request();
                if (status.isGranted) {
                  message(message: "Location permission is granted");
                }
              },
            ),
            ElevatedButton(
              child: Text("${Permission.storage}"),
                        onPressed: () async {
                var status = await Permission.storage.request();
                if (status.isGranted) {
                  message(message: "Storage permission is granted");
                }
              },
            ),
            ElevatedButton(
              child: Text("${Permission.contacts}"),
                          onPressed: () async {
                var status = await Permission.contacts.request();
                if (status.isGranted) {
                  message(message: "Contact permission is granted");
                }
              },
            ),
            ElevatedButton(
              child: const Text("All Permission"),
              onPressed: () async {
                Map<Permission, PermissionStatus> permission = await [
                  Permission.location,
                  Permission.storage,
                  Permission.phone,
                  Permission.camera,
                  Permission.audio,
                  Permission.bluetooth,
                  Permission.calendar,
                  Permission.contacts,
                  Permission.videos,
                  Permission.speech,
                  Permission.sms,
                  Permission.photos,
                  Permission.notification
                ].request();
                if(permission[0]!.isGranted || permission[1]!.isGranted || permission[2]!.isGranted || permission[3]!.isGranted || permission[4]!.isGranted
                    || permission[5]!.isGranted || permission[6]!.isGranted || permission[7]!.isGranted || permission[8]!.isGranted || permission[9]!.isGranted
                    || permission[10]!.isGranted || permission[11]!.isGranted || permission[12]!.isGranted) {
                  print("Multiple Permission is Successfully Done.....");
                  message(message: "All permission granted");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
  message({required String message}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

}


