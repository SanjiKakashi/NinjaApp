import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

class AnimeList extends StatefulWidget {
  @override
  _AnimeListState createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAnime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animes"),
      ),
      backgroundColor: Colors.grey[800],
    );
  }

  void getAnime() async{
    var j = Jikan();
    var data = await j.getTop(TopType.anime,subtype: TopSubtype.airing);
    print(data);
  }

}
