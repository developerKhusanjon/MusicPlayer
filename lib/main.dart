import 'package:flutter/material.dart';
import 'package:music_player/favorites_list.dart';
import 'package:music_player/folders.dart';
import 'package:music_player/music_list.dart';
import 'package:music_player/play_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Color _mainColor = Colors.pink;
  bool isSearching = false;
  Widget get searchingWidget => isSearching ? TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),borderSide: BorderSide.none),
        hintText: 'search',
        filled: true,
        fillColor: Colors.white
    ),
  ) : Text('Smart music',style: TextStyle(color: Colors.black87,fontFamily: "Varela",fontSize: 17),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            title: searchingWidget,
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.black87,
                onPressed: () {
                  setState(() {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.hearing,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.repeat),
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shuffle),
                color: Colors.grey,
                onPressed: () {},
              ),
            ],
            bottom: TabBar(onTap: (index) {}, tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Favorites',
                      style: TextStyle(
                        color: _mainColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Varela",
                      ),
                    ),
//                    SizedBox(height: 5),
//                    Text(
//                      '(365)',
//                      style: TextStyle(
//                        color: Colors.grey,
//                        fontSize: 10,
//                        fontWeight: FontWeight.bold,
//                        fontFamily: "Varela",
//                      ),
//                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Songs',
                      style: TextStyle(
                        color: _mainColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Varela",
                      ),
                    ),
//                    SizedBox(height: 5),
//                    Text(
//                      '(1024)',
//                      style: TextStyle(
//                        color: Colors.grey,
//                        fontSize: 10,
//                        fontWeight: FontWeight.bold,
//                        fontFamily: "Varela",
//                      ),
//                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Playlists',
                  style: TextStyle(
                    color: _mainColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Varela",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Folders',
                  style: TextStyle(
                    color: _mainColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Varela",
                  ),
                ),
              ),
//                  Icon(Icons.favorite,color: Colors.grey,),
//                  Icon(Icons.library_music,color: Colors.cyan,),
//                  Icon(Icons.subscriptions,color: Colors.grey,),
//                  Icon(Icons.folder,color: Colors.grey,),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            FavoritesPage(),
            MusicList(),
            PlayList(),
            FolderPage(),
          ]),
        ),
      ),
    );
  }
}
