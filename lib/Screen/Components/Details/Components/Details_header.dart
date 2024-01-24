import 'dart:ui';

import 'package:flutter/material.dart';
class Details_header extends StatelessWidget {
  const Details_header({
    super.key, required this.coverImageURL, required this.profileImageURL, required this.star, required this.time, required this.date,
  });
  final NetworkImage coverImageURL;
  final String profileImageURL;
  final String star;
  final String time;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
      ),
      child: Stack(
        children: [
          ///Image Cover
          Positioned(
            child: Container(
              width: double.infinity,
              height: 270,
              decoration:BoxDecoration(
                image:DecorationImage(
                  opacity: 0.9,
                  image: coverImageURL,
                  fit: BoxFit.cover,
                ),
              ),
              child:  BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 0),
                child: Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 20),
              child: Row(
                children: [
                  ///image profile
                  Container(
                    height: 230,
                    width: 150,
                    decoration:BoxDecoration(
                      borderRadius:const BorderRadius.all(Radius.circular(10)),
                      image:DecorationImage(
                        image: NetworkImage(profileImageURL),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.grey.withOpacity(0.3)
                    ),
                  ),
                  ///star time and date
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children:[
                                  const Icon(Icons.star,color: Colors.white70,),
                                  const SizedBox(width: 10),
                                  Text(star,style:const TextStyle(color: Colors.white),)
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Icon(Icons.timer,color: Colors.white70,),
                                  const SizedBox(width: 10),
                                  Text(time,style:const TextStyle(color: Colors.white))
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Icon(Icons.calendar_today_rounded,color: Colors.white70),
                                  const SizedBox(width: 10),
                                  Text(date,style:const TextStyle(color: Colors.white))
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  children:const [
                                    Icon(Icons.save_alt,color: Colors.white60,),
                                    Text('Save to list',style: TextStyle(color: Colors.white60),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  children:const [
                                    Icon(Icons.favorite_border,color: Colors.white60,),
                                    Text('Favorite',style: TextStyle(color: Colors.white60))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  children:const [
                                    Icon(Icons.share_outlined,color: Colors.white60,),
                                    Text('Share',style: TextStyle(color: Colors.white60))
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}