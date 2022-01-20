import 'package:demo/list/model.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Model>model=Model.ayan();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Flutter Catalog"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount:model.length ,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            trailing:Icon(model[index].trailingIcon),
            title: Text(model[index].tittle.toString()),
            leading: Icon(model[index].leadingIcon),
            subtitle: Image.asset(model[index].image.toString()),
          ),
        );
      },),
    );
    ;
  }
}


