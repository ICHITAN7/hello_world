import 'package:flutter/material.dart';
import 'package:hello_world/Screen/Home/Components/Slide_view.dart';
import 'package:hello_world/data.dart';
import '../Components/ShowAll_Page.dart';
import 'Components/Title_MovieList.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.black.withOpacity(0.9),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 5,right: 5),
                    child: SlideView(),
                  ),
                  Title_MovieList(
                    listMovie: data.Movie,
                    title: 'Recommend for you',
                    pressSeeall: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>ShowAll_Page(
                          title: 'Recommend Movie',
                          listMovie: data.listMovie1+data.listMovie2+data.listMovie3,
                        )),
                      );
                    },
                    ),
                  Title_MovieList(
                    listMovie: data.Movie,
                    title: 'Popular Movies',
                    pressSeeall: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>ShowAll_Page(
                          title: 'Best Movie',
                          listMovie: data.listMovie2+data.listMovie3+data.listMovie1,
                        )),
                      );
                    },
                  ),
                  Title_MovieList(
                    listMovie: data.Movie,
                    title: 'Top Rated Movies',
                    pressSeeall: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>ShowAll_Page(
                          title: 'Top Rating',
                          listMovie: data.getUrlsList()+data.listMovie2+data.listMovie1+data.listMovie3+data.Recommendation,
                        )),
                      );
                    },
                  ),
                  Title_MovieList(
                    listMovie: data.Movie,
                    title: 'Coming Soon',
                    pressSeeall: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>ShowAll_Page(
                          title: 'Coming Soon',
                          listMovie: data.getUrlsList()+data.listMovie2+data.listMovie1+data.listMovie3+data.Recommendation,
                        )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
