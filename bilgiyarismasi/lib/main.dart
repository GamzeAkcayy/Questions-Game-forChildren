import 'package:flutter/material.dart';
import 'package:odevflutter_mobil/degiskenler.dart';
import 'package:odevflutter_mobil/sorular.dart';
import 'package:odevflutter_mobil/test_veriler.dart';
import 'anasayfa.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: listem());
  }
}



