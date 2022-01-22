import 'dart:io';

import 'package:demo/Telegram/tele_chat.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class teleRegisteration extends StatefulWidget {
  const teleRegisteration({Key? key}) : super(key: key);

  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<teleRegisteration> {
  final _formKey = GlobalKey<FormState>();
  File? image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () {
              DialogueBox();
            },
          ),
          appBar: AppBar(
            title: Text("Registeration"),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      child: image != null
                          ? CircleAvatar(
                              radius: 60, backgroundImage: FileImage(image!))
                          : Image.asset("assets/Telegram.jpg", height: 100)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "YOUR INFO",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("please enter your name and upload a photo"),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, right: 20, left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 14,
                          child: Textfieldexample('firstname'),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, right: 20, left: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 14,
                          child: Textfieldexample('lastname'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: IconTextField(Icons.phone, "Mobile Number"),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child: IconTextField(Icons.person, "User Name")),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      } else {
                        return null;
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Chat(),
                          ));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              ),
            ),
          )),
    );
  }

  TextFormField IconTextField(IconData icon, String lbltxt) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your Mobile Number";
        } else if (value.length < 8) {
          return "10 digit number required";
        }
      },
      decoration: InputDecoration(
          labelText: lbltxt,
          suffix: Icon(icon),
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  Widget Textfieldexample(String labeltext) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your Firstname";
        } else if (value.length < 8) {
          return "8 digit name required";
        }
      },
      decoration: InputDecoration(
          filled: true,
          labelText: labeltext,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future galleryImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  DialogueBox() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [],
            ),
            actions: [
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.camera),
                    title: Text("Image from camera"),
                    onTap: () async {
                      await getImage();
                    },
                  ),
                  ListTile(
                      leading: Icon(Icons.image),
                      title: Text("Image from gallery"),
                      onTap: ()async {
                        await galleryImage();
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("cancel")),
                    ],
                  ),
                ],
              )
            ],
          );
        });
  }
}
