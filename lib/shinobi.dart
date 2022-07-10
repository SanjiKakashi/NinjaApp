import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/heart.dart';
import 'package:flutter_ninja_app/quote.dart';

// ignore: must_be_immutable
class Shinobi extends StatelessWidget {
  Quote quote;

  Shinobi(this.quote);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: ClipRRect(
                  child: Hero(
                    tag: quote.path,
                    child: Image.asset(
                      '${quote.path}',
                      height: 300,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${quote.name}',
                              style: TextStyle(
                                  color: Colors.amber[400],
                                  letterSpacing: 2.0,
                                  fontSize: 26.0),
                            ),
                            Flexible(child: Heart())
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Shinobi Level',
                        style: TextStyle(
                            color: Colors.grey[400], letterSpacing: 2.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '${quote.level}',
                        style: TextStyle(
                            color: Colors.amber[400],
                            letterSpacing: 2.0,
                            fontSize: 22.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child: Text(
                              '“${quote.quote}”',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.amber[300],
                                  letterSpacing: 2.0,
                                  fontSize: 22.0,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 10.0, 15.0, 0),
                            child: Text(
                              '-${quote.name}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.amber[400],
                                  letterSpacing: 2.0,
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
