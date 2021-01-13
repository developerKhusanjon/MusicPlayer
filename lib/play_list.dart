import 'package:flutter/material.dart';

class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  List playlists = ['Recently added','Recently played','Most played','Favorites'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.count(crossAxisCount: 2,
            padding: EdgeInsets.all(5),
            childAspectRatio: 1,
            children: List.generate(playlists.length, (index) => Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey.shade300,spreadRadius: 5.0,blurRadius: 15.0,offset: Offset(5,5))]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Icon(Icons.library_music,color: Colors.pink.shade300,size: 50,),
                  Divider(color: Colors.grey,height: 30,indent: 20,endIndent: 20,thickness: 0.2,),
                  Text(playlists[index],style: TextStyle(color: Colors.grey.shade700,fontFamily: "Varela"),)
                ],
              ),
            )),
          ),
        ),
        Material(
          elevation: 1,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(width: 1,color: Colors.pink)
              ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
//                            boxShadow: [
//                              BoxShadow(
//                                offset: Offset(-2,20),
//                                  color: Colors.grey.shade200,
//                                  blurRadius: 10,
//                                  spreadRadius: 0.25)
//                            ],
                        color: Colors.pink,
                      ),
                      child: Icon(
                        Icons.music_note,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Real Love',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Varela",
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Massari',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Varela",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
//                      SizedBox(width: 10,),
//                      IconButton(
//                        iconSize: 25,
//                        splashColor: Colors.transparent,
//                        icon: Icon(
//                          Icons.library_music,
//                          color: Colors.grey.shade600,
//                        ),
//                        onPressed: () {},
//                      ),
                    IconButton(
                      iconSize: 30,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.skip_previous,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      splashColor: Colors.white,
                      iconSize: 35,
                      padding: EdgeInsets.all(10),
                      icon: Icon(
                        Icons.pause,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.skip_next,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
//                      IconButton(
//                        iconSize: 25,
//                        splashColor: Colors.transparent,
//                        icon: Icon(
//                          Icons.blur_on,
//                          color: Colors.grey.shade600,
//                        ),
//                        onPressed: () {},
//                      ),
//                      SizedBox(width: 10,),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
