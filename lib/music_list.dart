import 'package:flutter/material.dart';
import 'package:music_player/music_page.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/all_songs.dart';
import 'package:fileaudioplayer/fileaudioplayer.dart';

class MusicList extends StatefulWidget {
  @override
  _MusicListState createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  final Color _mainColor = Colors.pink;
  List<SongInfo> allSongs;
  FileAudioPlayer player = new FileAudioPlayer();

  Future<void> start(int index) async {
    print("start");
    print(allSongs[index].filePath);
    await player.start(allSongs[index].filePath);
    print("end");
  }

  Future<void> stop() async {
    await player.stop();
  }

  Future<void> pause() async {
    await player.pause();
  }

  Future<void> resume() async {
    await player.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//                Container(
//                  color: Colors.white,
//                  height: 60,
//                  child: ListView(
//                    scrollDirection: Axis.horizontal,
//                    children: <Widget>[
//                      SizedBox(
//                        width: 10,
//                      ),
//                      ChoiceChip(
//                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                        label: Text(
//                          'Favorites',
//                          style: TextStyle(
//                              color: Colors.grey,
//                              fontSize: 15,
//                              fontWeight: FontWeight.bold),
//                        ),
//                        backgroundColor: Colors.transparent,
//                        selected: false,
//                        selectedColor: _mainColor,
//                        onSelected: (val) {},
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      ChoiceChip(
//                        elevation: 0.0,
//                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                        label: Text(
//                          'Songs',
//                          style: TextStyle(
//                              color: Colors.cyan,
//                              fontSize: 17,
//                              fontWeight: FontWeight.bold),
//                        ),
//                        backgroundColor: Colors.transparent,
//                        selected: false,
//                        onSelected: (val) {
//                          print("okkkk");
//                        },
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      ChoiceChip(
//                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                        label: Text(
//                          'Playlists',
//                          style: TextStyle(
//                              color: Colors.grey,
//                              fontSize: 15,
//                              fontWeight: FontWeight.bold),
//                        ),
//                        backgroundColor: Colors.transparent,
//                        selected: false,
//                        selectedColor: _mainColor,
//                        onSelected: (val) {},
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      ChoiceChip(
//                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                        label: Text(
//                          'Folders',
//                          style: TextStyle(
//                              color: Colors.grey,
//                              fontSize: 15,
//                              fontWeight: FontWeight.bold),
//                        ),
//                        backgroundColor: Colors.transparent,
//                        selected: false,
//                        selectedColor: _mainColor,
//                        onSelected: (val) {},
//                      ),
//                    ],
//                  ),
//                ),
        Expanded(
          child: FutureBuilder(
              future: getSongs(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) allSongs = snapshot.data;

                return snapshot.hasData
                    ? ListView.builder(
                        itemCount: allSongs.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              start(index);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MusicPage()));
                            },
                            splashColor: Colors.pink.shade100,
                            focusColor: Colors.pink.shade200,
                            child: ListTile(
                              leading: Container(
                                margin: EdgeInsets.only(bottom: 5, top: 5),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(-5, 20),
                                        color: Colors.grey.shade300,
                                        blurRadius: 10,
                                        spreadRadius: 0.25)
                                  ],
                                  color: Colors.pink.shade400,
                                ),
                                child: Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              title: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 0.1, color: Colors.grey))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      allSongs[index].title,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                        fontFamily: "Varela",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      allSongs[index].artist,
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: "Varela",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.shade500),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {},
                              ),
                            ),
                          );
                        })
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              }),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MusicPage()));
          },
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 0.1, color: Colors.black87))),
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
                        color: _mainColor,
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
                      onPressed: () {
                        stop();
                      },
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

  @override
  void dispose() {
    stop();
    super.dispose();
  }
}
