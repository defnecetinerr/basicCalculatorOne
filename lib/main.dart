import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: "Uygulama Başlığı",
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text("DEFNE BASİT HESAP MAKİNESİ"),

      ),
      body: altislem(),
    );
  }
}

class altislem extends StatefulWidget {
  const altislem({Key? key}) : super(key: key);
  @override
  _altislemState createState() => _altislemState();
}

class _altislemState extends State<altislem> {
  String isim = 'hesaplanacak değerler';
  int a = 10, b = 5;
  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void toplama() {
    setState(() {
      isim = (num.parse(t1.text) + num.parse(t2.text)).toString();
    });
  }

  void cikarma() {
    setState(() {
      isim = (num.parse(t1.text) - num.parse(t2.text)).toString();
    });
  }

  void carpma() {
    setState(() {
      isim = (num.parse(t1.text) * num.parse(t2.text)).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(isim),
            TextField(controller: t1),
            TextField(controller: t2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: toplama,
                  child: Text('TOPLAMA'),
                ),
                RaisedButton(
                  onPressed: cikarma,
                  child: Text('ÇIKARMA'),
                ),
                RaisedButton(
                  onPressed: carpma,
                  child: Text('ÇARPMA'),
                )
              ],
            )
          ])),
    );
  }
}