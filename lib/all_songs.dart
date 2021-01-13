///you need include this file only.
import 'package:flutter_audio_query/flutter_audio_query.dart';

/// create a FlutterAudioQuery instance.
final FlutterAudioQuery audioQuery = FlutterAudioQuery();

/// getting all songs available on device storage

Future<List<SongInfo>> getSongs() async {
  List<SongInfo> songs = await audioQuery.getSongs();
  return songs;
}

Future<List<ArtistInfo>> getArtists() async{
  List<ArtistInfo> artists = await audioQuery.getArtists();

  return artists;
}
