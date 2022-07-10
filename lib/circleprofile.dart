import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/quote.dart';

class CircleProfile extends StatelessWidget {
  Quote quote;

  CircleProfile(this.quote);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/shinobi", arguments: quote);
      },
      child: Hero(
        tag: quote.path,
        child: Card(
          elevation: 5,
          color: Colors.blueGrey[700],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(quote.path),
                radius: 25.0,
              ),
              Text(
                "${quote.name}",
                style: TextStyle(
                    color: Colors.amber[400],
                    fontSize: 14,
                    fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
      ),
    );
  }
}
