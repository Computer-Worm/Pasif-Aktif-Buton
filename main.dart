import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String seciliButon = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
              TextButton(
                  onPressed: () {
                    setState(() {
                      seciliButon = "SOL";
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 80, bottom: 0, right: 0, left: 0),
                    width: 100, 
                    height: 200,
                    color: seciliButon == "SOL" ? Colors.lime : Colors.blueGrey,
                    child: seciliButon == "SOL" ? const Text("AKTİF", textAlign: TextAlign.center,) : const Text("PASİF", textAlign: TextAlign.center,),
                  ),
                  
                ),
              TextButton(
                onPressed: () {
                  setState(() {
                    seciliButon = "SAĞ";
                  });
                }, 
                child: Container(
                  padding: const EdgeInsets.only(top: 80, bottom: 0, right: 0, left: 0),
                  width: 100, 
                  height: 200,
                  color: seciliButon == "SAĞ" ? Colors.lime : Colors.blueGrey,
                  child: seciliButon == "SAĞ" ? const Text("AKTİF", textAlign: TextAlign.center,) : const Text("PASİF", textAlign: TextAlign.center,),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
