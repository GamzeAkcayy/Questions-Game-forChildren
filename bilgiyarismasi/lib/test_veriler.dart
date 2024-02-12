import 'package:odevflutter_mobil/sorular.dart';

class Test_Veri{
  int _sorusayac=0;
  List <Soru> _soruBankasi =[
    Soru(
        soruMetni: 'Türev eğimin ölçüsüdür', soruYaniti: false),
    Soru(soruMetni: 'Dikdörtgenin iç açıları toplamı 360 derecedir.', soruYaniti: true),
    Soru(soruMetni: 'Bir yılda 15 ay vardır.', soruYaniti: false),
    Soru(soruMetni: '2+2=4 tür.', soruYaniti: true),
    Soru(
        soruMetni: 'Canlıların ortak özelliklerinden birisi oksijenli solunumdur.',
        soruYaniti: false),
    Soru(
        soruMetni: 'Bitkiler pasif harekette bulunur.', soruYaniti: true),
    Soru(
        soruMetni: "Optiğin kurucusu İbnül Heysem'dir.", soruYaniti: true),
    Soru(
        soruMetni: 'Bitkilerde kloroplast fotosentezi sağlar.', soruYaniti: true),
    Soru(
        soruMetni: "Isaac Newton'un 4 temel hareket yasası vardır.", soruYaniti: false),
    Soru(
        soruMetni: 'Nikola Tesla alternatif akım kullanarak birçok soruna çözüm getirmiştir.',
        soruYaniti: true),
  ];

  String getSoruMetni(){

    return _soruBankasi[_sorusayac].soruMetni;
  }
  bool getSoruYaniti(){

    return _soruBankasi[_sorusayac].soruYaniti;
  }
  void sonrakiSoru(){
    if(_sorusayac+1<_soruBankasi.length)
    {_sorusayac++;}
  }
}