import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {  },),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.black,),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-0, 50),
                          color: Colors.grey.shade300,
                          blurRadius: 20,
                          spreadRadius: 0.25)
                    ],
                  ),
                  child: Image.asset(
                    "images/purple_disc.png",
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Real Love",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "Varela",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Massari (remix version)",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontFamily: "Varela",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.hearing,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        print("hello");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Slider(
                    value: 30,
                    min: 0,
                    max: 100,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.grey.shade400,
                    onChanged: (val){

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('1:37',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "Varela"),),
                      Text('4:28',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "Varela"),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(width: 5,),
                    IconButton(
                      iconSize: 23,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.repeat,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.skip_previous,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade100
                      ),
                      child: IconButton(
                        splashColor: Colors.pinkAccent.shade100,
                        iconSize: 45,
                        padding: EdgeInsets.all(10),
                        icon: Icon(
                          Icons.pause,
                          color: Colors.black87,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      iconSize: 40,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.skip_next,
                        color: Colors.black87,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 23,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.shuffle,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 5,)
                  ],
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
