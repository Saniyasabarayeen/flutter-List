import 'package:demo/list/scond%20page.dart';
import 'package:demo/login/lgin_page.dart';
import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  List<Items> item = [
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
    Items("name", Icons.call, Icons.person, "surname"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(child: Icon(Icons.chat),onPressed:() {

    } ,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(item[index].leading),
                    ),
                    title: Text(item[index].title),
                    subtitle: Text(item[index].subtitle),
                    trailing: Icon(item[index].trailing),
                  ),
                );
              },
            ),
            ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginn(),));
            }, child: Text("sign out"),)
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("WhatsApp Demo"),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.add_a_photo),
          SizedBox(width: 8,),

        ],
      ),
    );
  }
}
