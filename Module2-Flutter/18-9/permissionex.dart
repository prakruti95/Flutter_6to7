import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Permissionex extends StatefulWidget
{
  const Permissionex({super.key});

  @override
  State<Permissionex> createState() => _PermissionexState();
}

class _PermissionexState extends State<Permissionex>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Permission Example"),),body: Center
      (
        child: Column
          (
          children:
          [
            ElevatedButton(onPressed: ()
            {
                requestcamera();
            }, child: Text("Camera")),
            ElevatedButton(onPressed: ()
            {
              requestgallery();
            }, child: Text("Gallery")),
          ],
        ),
    ),);
  }

  Future<void> requestcamera()async
  {
      PermissionStatus status = await Permission.camera.request();
      if(status.isGranted)
        {
          print("camera permission granted");
        }
      else if(status.isDenied)
        {
          print("camera permission denied");
        }
      else if(status.isPermanentlyDenied)
        {
          print("camera permission permanently denied");
        }

      await openAppSettings();
  }

  Future<void> requestgallery()async
  {
    PermissionStatus status = await Permission.photos.request();
    if(status.isGranted)
    {
      print("camera permission granted");
    }
    else if(status.isDenied)
    {
      print("camera permission denied");
    }
    else if(status.isPermanentlyDenied)
    {
      print("camera permission permanently denied");
    }

    await openAppSettings();
  }
}
