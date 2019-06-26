import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.4,
        leading: IconButton(
            icon: Icon(
              Icons.photo_camera,
              size: 30,
              color: Colors.black,
            ),
            onPressed: null),
        title: Text(
          "Instagram",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.live_tv,
                size: 30,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.send,
                size: 30,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Container(
              child: new Expanded(child: ListView.builder(
                  itemBuilder: (BuildContext context , int index){
                    return new Container(
                      child: (index==0)
                      ? new Container(
                        height: 100,
                        child: new Column(
                          children: <Widget>[
                            new Expanded(
                              child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context,int index){
                                  return new Container(
                                    child: new Column(
                                      children: <Widget>[
                                        new Padding(
                                          padding: EdgeInsets.all(10),
                                          child: CircleAvatar(
                                            radius: 40,
                                            backgroundColor: Colors.black12 ,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),

                          ],
                        ),
                      ) :
                         new Container(
                           child: Padding(
                             padding: EdgeInsets.only(top: 10, bottom: 10,),
                             child: new Column(
                               children: <Widget>[
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Row(
                                       children: <Widget>[
                                         Padding(
                                           padding:EdgeInsets.only(left: 10,),
                                           child: CircleAvatar(
                                             radius: 30,
                                           ),
                                         ),
                                         Padding(
                                           child: Text("User Name" , style: TextStyle(fontSize: 15, ),),
                                           padding: EdgeInsets.only(left: 10,right: 10,),
                                         ),
                                       ],
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 10, right: 10,),
                                       child: Icon(Icons.more_vert, size: 30,),
                                     ),
                                   ],
                                 ),
                                 new Container(
                                   child:Padding(
                                     padding: EdgeInsets.only(top: 10, bottom: 10,),
                                     child: new Image.asset("m1/1.png",fit: BoxFit.cover,),
                                   ),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                   children: <Widget>[
                                     Row(
                                       children: <Widget>[
                                         Padding(
                                           padding: EdgeInsets.only(left: 10 , ),
                                           child: Icon(Icons.favorite_border, size: 30,),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(left: 10 , right: 10,),
                                           child: Icon(Icons.chat_bubble_outline, size: 30,),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only( right: 10,),
                                           child: Icon(Icons.send, size: 30,),
                                         ),

                                       ],

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 10, right: 10,),
                                       child: Icon(Icons.bookmark_border, size: 30,),
                                     ),
                                   ],
                                 ),

                               ],
                             ),
                           ),
                         ) ,
                    );
                  },
                  itemCount: 20)),
            ),
          ],
        ),
      ),

    );
  }

}
