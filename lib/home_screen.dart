import 'package:flutter/material.dart';
import 'package:movies/browse_screen.dart';
import 'package:movies/home_screen_widget.dart';
import 'package:movies/search.dart';
import 'package:movies/watch_list.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black
        ),

        child: BottomNavigationBar(
          onTap: (index){
             CurrentPage=index;
             setState(() {

             });
          },

          selectedItemColor: Color.fromRGBO(255, 176, 31, 1.0) ,
          unselectedItemColor: Color.fromRGBO(181, 180, 180, 1.0) ,
          currentIndex: CurrentPage,

          backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/images/Group 2.png',),
            label: 'HOME'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/search-2.png'),
            label: 'Search'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/Icon material-movie.png'),
            label: 'Browse'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/Icon ionic-md-bookmarks.png'),
            label: 'WatchList'),

          ],
        ),
      ),
      body: getCurrentPage()

    );
  }

  Widget getCurrentPage(){
    if(CurrentPage==0){
      return HomeScreenWidget();
    }


     else if(CurrentPage==1){
      return Search();
    }
    else if(CurrentPage==2){
      return BrowseScreen();
    }
    else return WatchList();

    }

  }



