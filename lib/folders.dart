import 'package:flutter/material.dart';

class FolderPage extends StatefulWidget {
  @override
  _FolderPageState createState() => _FolderPageState();
}

class _FolderPageState extends State<FolderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: 23,
                itemBuilder: (context, index) =>
                    Container(
                      height: 60,
                      margin: EdgeInsets.all(0.2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(
                              color: Colors.grey, width: 0.2))
                      ),
                      child: Center(
                        child: ListTile(
                          onTap: (){},
                          leading: Icon(Icons.folder,color: Colors.pink.shade200,size: 55,),
                          title: Text('2008',style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Varela",
                          ),),
                        ),
                      ),
                    ))),
        Material(
          elevation: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(width: 1, color: Colors.pink)),
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
