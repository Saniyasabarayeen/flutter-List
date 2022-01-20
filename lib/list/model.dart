import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model {
  String? tittle;
  IconData? leadingIcon;
  IconData? trailingIcon;
  String? image;

  Model({required this.tittle, required this.leadingIcon, required this.trailingIcon, required this.image});

static List<Model>ayan(){
  return <Model>[
    Model(tittle: "bookmark", leadingIcon:Icons.star , trailingIcon: Icons.account_tree_rounded, image:"assets/img1.jpg"),
    Model(tittle: "Widget", leadingIcon:Icons.adb, trailingIcon: Icons.access_alarms, image:"assets/img1.jpg"),
    Model(tittle: "Widget", leadingIcon:Icons.accessibility_outlined, trailingIcon: Icons.add_box, image:"assets/img1.jpg"),
    Model(tittle: "Widget", leadingIcon:Icons.accessible_forward, trailingIcon: Icons.add_comment, image:"assets/img1.jpg"),
    Model(tittle: "bookmark", leadingIcon:Icons.add_chart,trailingIcon: Icons.add_ic_call, image:"assets/img1.jpg"),
    Model(tittle: "Widget", leadingIcon:Icons.add_road_rounded, trailingIcon: Icons.account_tree_rounded, image:"assets/img1.jpg"),
    Model(tittle: "bookmark", leadingIcon:Icons.add_location_alt_rounded, trailingIcon: Icons.add_to_queue_outlined, image:"assets/img1.jpg"),
    Model(tittle: "Widget", leadingIcon:Icons.adb, trailingIcon: Icons.account_tree_rounded, image:"assets/img1.jpg"),
  ];
}
}




