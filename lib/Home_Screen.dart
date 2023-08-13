import 'dart:io';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:getx_part12_image_picker/image_picker_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  ImagePickerController imagePickerController=Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Part 12 Image Picker"),
      centerTitle: true,
      ),

      body: Obx(() => Column(

        children: [

          CircleAvatar(
            backgroundImage: imagePickerController.imagePath.isNotEmpty ?
            FileImage(File(imagePickerController.imagePath.toString())):
            null


          ),

          TextButton(onPressed: (){

            imagePickerController.getImage();
          }, child: Text("Pick Image"))

      ],

      ),)
    );
  }
}
