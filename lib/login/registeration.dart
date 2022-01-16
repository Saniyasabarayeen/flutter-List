import 'package:demo/list/demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registeration extends StatefulWidget {
  const Registeration({Key? key}) : super(key: key);

  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100
      ,
      appBar: AppBar(
        title: Text("Registeration form"),
        backgroundColor: Colors.grey,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 30,
                  left: 30,
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty){
                      return toast("enter username");
                    }else if(value.length<6){
                      return "please enter 6 digit name";
                    }

                  },
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.red,
                      contentPadding: EdgeInsets.all(8),
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5.0),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 30,
                  right: 30,
                ),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return toast("plz enter your email");
                    }else if (value.length<8){

                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5.0),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 30,
                  right: 30,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      labelText: "password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 30,
                  right: 30,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      )),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 30,
                      right: 10,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/14,
                      child:  TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            focusColor: Colors.red,
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Firstname",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red, width: 5.0),
                                borderRadius: BorderRadius.circular(10))),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      right: 30,
                    ),
                    child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/14,
                        child:  TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.red,
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Lastname",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                                  borderRadius: BorderRadius.circular(10))),
                        )
                    ),
                  ),
                ],
              ),

             SizedBox(
              height: 60,
             ),
             ElevatedButton(onPressed: () {
             if (_formKey.currentState!.validate()){
               Navigator.push(context, MaterialPageRoute(builder: (context) =>Name()));
             }

}, child:Text("SignIn") )
            ],
          ),
        ),
      ),
    );
  }

  toast(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
