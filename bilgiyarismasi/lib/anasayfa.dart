import 'package:flutter/material.dart';
import 'package:odevflutter_mobil/main.dart';
import 'package:odevflutter_mobil/sorusayfasi.dart';

class listem extends StatelessWidget {
  const listem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(),
    );;
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body:
      Container(
          constraints: BoxConstraints.expand(),
          child: Column(
              children:<Widget>
              [ Image.asset("assets/ezel.jpeg",width: 500,),
                SizedBox.fromSize(),
                Center(
                  child:
                  Text('', style:
                  TextStyle(fontFamily:'Pacifico',fontSize: 40,)),),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround ,//rowdaki verilerin boşluklu olarak sıralanmasını sağlar.
                  crossAxisAlignment:CrossAxisAlignment.center,// rowdaki verileri yatayda nasıl duracağını ayarladım.
                  children:[
                    ElevatedButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SoruSayfasi()),);
                    } ,
                      child:
                      Text('TESTE BAŞLA', style:
                      TextStyle(fontFamily:'Pacifico',fontSize: 20)),),],),
              ]
          )
      ),
    );
  }}