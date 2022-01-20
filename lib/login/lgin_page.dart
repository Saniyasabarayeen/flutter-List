
import 'package:demo/list/demo.dart';
import 'package:demo/login/registeration.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Loginn extends StatefulWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  _LoginnState createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Column(
                    children: [
                      Text("Flutter"),
                      Image.asset('assets/ayan.jpg',height: 100,),
                      SizedBox(height: 5,),
                      Image.network('https://www.industrialempathy.com/img/remote/img1.jpg',height: 100,)
                    ],
                  )
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty){
                        return toast("plz enter email");
                      }else if (value.length<10){
                        return toast("6 digit email required");
                      }


                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                    suffix: Icon(
                      Icons.person
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return toast("please enter password");
                      }else{
                        print("successful");

                      }
                    },
                      decoration: InputDecoration(
                          labelText: "Pasword",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        suffix: Icon(
                          Icons.visibility_off
                        )
                      )),
                ),
                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){

                      Navigator.push(context,MaterialPageRoute(builder: (context) => Name(),));

                    }else{
                      print('not valid');

                    }
                  },
                  child: Text("Login"),
                ),
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New User ? "),
                    TextButton(onPressed: () {
Navigator.push(context,MaterialPageRoute(builder: (context) => Registeration()));
                    }, child: Text("Create Account "))
                   ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Login Page"),
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
