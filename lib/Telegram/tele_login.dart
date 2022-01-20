import 'package:demo/Telegram/tele_register.dart';
import 'package:demo/login/registeration.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _TelelginState createState() => _TelelginState();
}

class _TelelginState extends State<First> {
  final _formKey = GlobalKey<FormState>();
bool visible=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200
                  ),
                  Text(
                    'Your Phone Number',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("please confirm your country code "),
                  Text("and enter your mobile number"),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("please enter mobile number");
                        } else if (value.length < 10) {
                          return ("10 digit mobile number required");
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Mobile Number",
                          suffix: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  Visibility(
                    visible:visible,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("please enter username");
                          } else if (value.length < 10) {
                            return ("8 digit name required");
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Username",
                            suffix: Icon(Icons.arrow_drop_down)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                        }else {
                          return null;
                        }
                        visible=!visible;
                        setState(() {

                        });
                      },
                      child: Text("Next",
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 40))),

                  SizedBox(
                    height: 20,
                  ),
                  Text("Or Sign In with"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Image.asset("assets/Facebook.jpg",height: 30),
                     Image.asset("assets/Google.png",height: 30,),
                     Image.asset("assets/insta.jpg",height: 30,)
                   ],
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        height:300 ,
                      ),
                      Text("NewUser ?"),
                      TextButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => teleRegisteration(),)) ;
                      }, child: Text("Create Account"))
                    ],
                  ),


                ]),
          ),
        ),
      ),
    );
  }


  }

