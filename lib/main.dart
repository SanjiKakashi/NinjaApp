import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/shinobi.dart';
import 'package:flutter_ninja_app/shinobi_list.dart';

import 'quote.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/":(context) => ShinobiList(),
      "/shinobi":(context) => Shinobi(ModalRoute.of(context).settings.arguments),
    },
  ));
}