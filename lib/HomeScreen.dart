import 'package:flutter/material.dart';
import 'package:instagram/AddPage.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/LikePage.dart';
import 'package:instagram/PersonPage.dart';
import 'package:instagram/SearchPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
  int _currentTap = 0;
  var _currentPage ;
  List page;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPage = new homepage();
    page =[
      homepage(),
      searchpage(),
      addpage(),
      likepage(),
      personpage(),
    ];
  }
  @override

  Widget build(BuildContext context) {
    var _textStyle = TextStyle(fontSize: 0);
    var _bottomItem = new BottomNavigationBar(
        currentIndex: _currentTap,
        onTap: (int index){
          setState(() {
            _currentTap = index ;
            _currentPage = page[index] ;
          });
        },
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
      new BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black12),
        title: new Text("" , style: _textStyle,),
        activeIcon: Icon(Icons.home , color: Colors.black,)
      ),
      new BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black12),
          title: new Text("" , style: _textStyle,),
          activeIcon: Icon(Icons.search , color: Colors.black,)
      ),
      new BottomNavigationBarItem(
          icon: Icon(Icons.add_box, color: Colors.black12),
          title: new Text("" , style: _textStyle,),
          activeIcon: Icon(Icons.add_box , color: Colors.black,)
      ),
      new BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border, color: Colors.black12),
          title: new Text("" , style: _textStyle,),
          activeIcon: Icon(Icons.favorite , color: Colors.black,)
      ),
      new BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black12),
          title: new Text("" , style: _textStyle,),
          activeIcon: Icon(Icons.person , color: Colors.black,)
      ),
    ]);
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: _bottomItem,
      body: _currentPage ,
    );
  }
}
