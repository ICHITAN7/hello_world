import 'package:flutter/material.dart';
import 'package:hello_world/Screen/Components/ShowAll_Page.dart';
import 'package:hello_world/data.dart';
class Moviepage extends StatelessWidget {
  const Moviepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_show_All(listMovie:data.listMovie1,),
    );
  }
}
