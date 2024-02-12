import 'package:flutter/material.dart';
import 'package:odevflutter_mobil/degiskenler.dart';
import 'package:odevflutter_mobil/test_veriler.dart';

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.green,
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }}
class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List <Widget> secimler = [];

  Test_Veri test_1 = Test_Veri();

        @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
            spacing: 3,
            runSpacing: 3,
            children: secimler ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.close,
                            size: 30.0,
                          ),
                          onPressed: () {
                            bool dogruYanit=test_1.getSoruYaniti();
                            setState(() {
                              if(dogruYanit==false){
                                secimler.add(kDogruIconu);}
                              else{
                                secimler.add(kYanlisIconu);}
                              test_1.sonrakiSoru();
                              //secimler.add(kYanlisIconu);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent[100],
                          ),

                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: Icon(Icons.done_outline_outlined, size: 30.0),
                          onPressed: () {
                            setState(() {
                              test_1.getSoruYaniti()==true
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);
                              test_1.sonrakiSoru();
                              //secimler.add(kDogruIconu);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary:Colors.deepOrangeAccent[100],
                          ),
                        ))),
              ])),
        )
      ],
    );
  }
}


