import 'package:flutter/material.dart';

class ShowAll_Page extends StatelessWidget {
  ShowAll_Page({super.key, required this.title, required this.listMovie});
  final String title;
  final List<String> listMovie;
  @override
  Widget build(BuildContext context) {
    final listMovie1=listMovie;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.red,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title:Text(title,style:const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
      ),
      body:Body_show_All(listMovie: listMovie1),
    );
  }
}

class Body_show_All extends StatelessWidget {
  const Body_show_All({
    super.key,
    required this.listMovie,
  });

  final List<String> listMovie;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.9),
      child: OrientationBuilder(
        builder: (context, orientation) {
          final isVertical = orientation == Orientation.portrait;
          return Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isVertical ? 2 : 4,// Adjust the aspect ratio based on your needs
                childAspectRatio: isVertical ? 0.7 : 0.7,
              ),
              itemCount: listMovie.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.2),
                      image:DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(listMovie[index]),
                      ) ,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
