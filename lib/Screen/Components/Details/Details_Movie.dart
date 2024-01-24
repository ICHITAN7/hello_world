
import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';
import 'Components/Details_header.dart';
import 'Components/Text_details.dart';
class Details_Screen extends StatelessWidget {
  Details_Screen({Key? key,
    required this.imageProfile,
    required this.imageCover,
    required this.title,
    required this.details,
    required this.press,
    required this.star,
    required this.time,
    required this.date,
  }) : super(key: key);
  final String imageProfile;
  final String imageCover;
  final String star;
  final String time;
  final String date;
  final String title;
  final String details;
  final press;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8)
              ),
              child: Details_header(
                coverImageURL:NetworkImage(imageCover),
                profileImageURL:imageProfile,
                star: star,
                time: time,
                date: date,
              ),
            ),
            ///body
            Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton.icon(
                            onPressed:press,
                            icon:const Icon(Icons.play_arrow,size: 35,),
                            label:const Text('Play',style: TextStyle(fontSize: 20),),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black.withOpacity(0.8),
                              backgroundColor: Colors.white.withOpacity(1),
                              minimumSize:const Size(double.infinity, 50),
                            ),
                          ),
                        ),
                        ///title
                        Padding(
                          padding:const EdgeInsets.only(left: 10, right: 10),
                          child: Text_details(
                            title: title,
                            details:details,
                          ),
                        ),
                        ///recommend
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Recommendation',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        OrientationBuilder(
                          builder:(context, orientation) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, bottom: 10),
                              child: GridView.builder(
                                  padding:const EdgeInsets.only(top: 5),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2,
                                    mainAxisSpacing: 10.0,
                                    crossAxisSpacing: 10.0,
                                    childAspectRatio: 0.75,
                                  ),
                                  itemBuilder: ((context, index) {
                                    return Container
                                      (
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          color: Colors.grey.withOpacity(0.3),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                data.Recommendation[index]),
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                    );
                                  }
                                  )
                              ),
                            );
                          }
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}




