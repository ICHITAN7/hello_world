import 'package:flutter/material.dart';
import 'package:hello_world/Screen/Components/ShowAll_Page.dart';
import 'package:hello_world/data.dart';
class Drawer_view extends StatelessWidget {
  const Drawer_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.8),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName:const Text('Ichitan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.red),),
            accountEmail:const Text('Hafizsterling@gmail.com',style: TextStyle(color: Colors.red),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.2),
              foregroundImage:const NetworkImage('https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t39.30808-6/324435982_689456456009839_4260459820847056272_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHIGLKPVhJ6YpiEDPDsE5Nbh9h3k12QDZeH2HeTXZANl78QSgYczIuvhAVsAMchS5Vn-Lc0Sk7YLsijvJcQ6hLN&_nc_ohc=ZLbFaSWrV3UAX9B5Tng&_nc_zt=23&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=00_AfArUbNfDo7LGXgVJYmW5hdrGzAkMlsEHYgyL1s-PkPDFQ&oe=6478CA39'),
            ),
            decoration: BoxDecoration(
              color:Colors.white.withOpacity(0)
            ),
          ),
          ListTile(
                leading:const Icon(Icons.history),
                title:const Text('History'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
          ListTile(
                leading:const Icon(Icons.library_add_check_sharp),
                title:const Text('Movies List'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){
                  Body_show_All(listMovie:data.listMovie1,);
                },
          ),
          ListTile(
                leading:const Icon(Icons.favorite),
                title:const Text('Favorite'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
          const Divider(color: Colors.grey,height: 0,),
          ListTile(
                leading:const Icon(Icons.movie),
                title:const Text('Recommend'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
          ListTile(
                leading:const Icon(Icons.movie_filter),
                title:const Text('Populer'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
          ListTile(
                leading:const Icon(Icons.star),
                title:const Text('Top Rated'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
          ListTile(
                leading:const Icon(Icons.local_movies),
                title:const Text('Upcoming'),
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: (){},
          ),
        ],
      ),
    );
  }
}