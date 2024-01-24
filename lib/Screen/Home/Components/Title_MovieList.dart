import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';
import '../../Components/Details/Components/Movie_Play.dart';
import '../../Components/Details/Details_Movie.dart';
class Title_MovieList extends StatelessWidget {
  const Title_MovieList({
    super.key,
    required this.listMovie,
    required this.title,
    required this.pressSeeall,
  });
  final  listMovie;
  final String title;
  final VoidCallback pressSeeall;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text(title,style:const TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
              TextButton(onPressed:pressSeeall, child: const Text('See all',style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15
              ),))
            ],
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
              itemCount: listMovie.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = listMovie[index];
                return Padding(
                  padding: const EdgeInsets.only(top:10,right: 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details_Screen(
                          imageProfile: item['imageProfile'],
                          imageCover: item['imageCover'],
                          star: item['star'],
                          time:item['time'] ,
                          date: item['date'],
                          title: item['title'],
                          details: item['details'],
                          press: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>MoviePlay(),
                              ),
                            );
                          },
                        ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.2),
                        image: DecorationImage(
                          image: NetworkImage(item['imageProfile']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}