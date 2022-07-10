import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/circleprofile.dart';

import 'quote.dart';

class ShinobiList extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ShinobiList> {
  static const ColorFilter greyscale = ColorFilter.matrix(<double>[
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0,      0,      0,      1, 0,
  ]);

  List<Quote> Quotes = [
    Quote(
        name: 'Kakashi Hatake',
        path: 'assets/kakashi.jpg',
        level: "Jonin-level",
        quote: 'As long as you dont give up, there will be always salvation'),
    Quote(
        name: "Rock Lee",
        path: 'assets/rocklee.jpg',
        level: "Chunin-level",
        quote: 'Hard Work beats talents'),
    Quote(
        name: "Might Guy",
        path: 'assets/mightguy.jpg',
        level: "Jonin-level",
        quote: 'It doesn\'t matter what other people say about you.'),
    Quote(
        name: "Gaara",
        path: 'assets/gaara.png',
        level: "Kazekage",
        quote:
            'How painful loneliness can be and how love can change someone.'),
    Quote(
        name: "Haku",
        path: 'assets/haku.png',
        level: "Chunin-level",
        quote:
            'There is no good or evil when you\'re protecting the ones you love.'),
    Quote(
        name: "Hinata Hyuga",
        path: 'assets/hinata.png',
        level: "Chunin-level",
        quote: 'Love is worth fighting for'),
    Quote(
        name: "Iruka",
        path: 'assets/iruka.jpg',
        level: "Jonin-level",
        quote:
            'Not to judge people by their reputations but by their personalities.'),
    Quote(
        name: "Itachi Uchiha",
        path: 'assets/itachi.png',
        level: "Chunin-level",
        quote: 'Sometimes you have to make sacrifices for the greater good.'),
    Quote(
        name: "Jiraiya",
        path: 'assets/jiraiya.png',
        level: "Legendary Sanin",
        quote:
            'That you must never give up your faith in humanity and your hope of peace.'),
    Quote(
        name: "Madara Uchiha",
        path: 'assets/madara.png',
        level: "Indeterminable",
        quote: 'The longer you live, The more you realize that reality is just made of pain, suffering, and emptiness.'),
    Quote(
        name: "Minato and Kushina",
        path: 'assets/minatokushina.png',
        level: "Hokage",
        quote: 'That parent\'s love beat all else'),
    Quote(
        name: "Nagato",
        path: 'assets/nagato.jpg',
        level: "Chunin-level",
        quote: 'That revenge and hatred only lead to more revenge and hatred.'),
    Quote(
        name: "Neji Hyuga",
        path: 'assets/neji.jpg',
        level: "Chunin-level",
        quote: 'If you leave your pride behind you can change your destiny.'),
    Quote(
        name: "Obito Uchiha",
        path: 'assets/obito.png',
        level: "Chunin-level",
        quote: 'It is never too late to revert to the right way.'),
    Quote(
        name: "Sai",
        path: 'assets/sai.png',
        level: "Chunin-level",
        quote: 'A life without feeling isn\'t worthwhile'),
    Quote(
        name: "Sakura Haruno",
        path: 'assets/sakura.png',
        level: "Chunin-level",
        quote: 'Weakness is a choice, not an excuse'),
    Quote(
        name: "Sasuke Uchiha",
        path: 'assets/sasuke.png',
        level: "Shadow Hokage",
        quote:
            'You should not only dream about things but actually achieve them.'),
    Quote(
        name: "Shikamaru Nara",
        path: 'assets/shikamaru.png',
        level: "Chunin-level",
        quote:
            'Sometimes you even have to do the things that bother you the most.'),
    Quote(
        name: "Naruto Uzumaki",
        path: 'assets/naruto.jpg',
        level: "Hokage",
        quote: 'No matter what happens in your life, Never Give Up'),
  ];

  // List<Quote> Quotes = [
  //   Quote(name:"RM",path: "assets/rm.jpg",level: "",quote: "If you want to love others, I think you should love yourself first."),
  //   Quote(name:"Jungkook",path: "assets/jungkook.jpg",level: "",quote: "Living without passion is like being dead."),
  //   Quote(name:"V",path: "assets/v.jpg",level: "",quote: "Don\'t be trapped in someone else\'s dream."),
  //   Quote(name:"Jin",path: "assets/jin.jpg",level: "",quote: "Your presence can give happiness. I hope you remember that."),
  //   Quote(name:"Jimin",path: "assets/jimin.jpg",level: "",quote: "Go on your path, even if you live for a day."),
  //   Quote(name:"J-Hope",path: "assets/jhope.png",level: "",quote: "Even when this rain stops, when clouds go away, I stand here, just the same."),
  //   Quote(name:"Suga",path: "assets/suga.jpg",level: "",quote: "Life is tough, and things don't always work out well, but we should be brave and go on with our lives.")
  // ];

  Widget QWidgets(q) {
    return FlatButton(
      onPressed: () {
        Navigator.(context, "/pushNamedshinobi", arguments: q);
        print("Clicked");
      },
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
      child: Card(
        color: Colors.grey[600],
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Hero(
                  tag: q.path,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(q.path),
                    radius: 25.0,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Text(
                  q.quote,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("Shinobi App"),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(children: [
        ClipRRect(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage("assets/narutoship.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              colorBlendMode: BlendMode.clear,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          height: 5,
        ),
        // Column(children: Quotes.map((e) => QWidgets(e)).toList()),
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: Quotes.map((e) => CircleProfile(e)).toList(),
        ))
      ]),
    );
  }
}
