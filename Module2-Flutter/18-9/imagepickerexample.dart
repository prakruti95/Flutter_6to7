import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class Imagepickerexample extends StatefulWidget {
  const Imagepickerexample({super.key});

  @override
  State<Imagepickerexample> createState() => _ImagepickerexampleState();
}

class _ImagepickerexampleState extends State<Imagepickerexample> {
  late XFile data;
  File? selecteimage;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Image Picker"),),body: Center
      (
        child: Column(

          children:
        [
            if(selecteimage!=null) Image.file(selecteimage!,width: 250,height: 250,fit:BoxFit.cover)
            else
              const Icon(Icons.image,size: 100,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
                chooseimage();
            }, child: Text("Pick Image")),
          ElevatedButton(onPressed: ()
          {
           shareimage();
          }, child: Text("Share Image"))

        ],),
    ),);
  }

   Future<void> chooseimage()async
   {
     final picker = ImagePicker();
      data = (await picker.pickImage(source: ImageSource.gallery))!;

      if(data!=null)
        {
          setState(() {
           selecteimage = File(data.path);
          });
        }
   }

  Future<void> shareimage()async
  {
    await Share.shareXFiles([XFile(data.path)],text:"check this image");

  }
}
