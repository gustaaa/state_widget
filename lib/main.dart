import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statefull_widget/widget/Convert.dart';
import 'package:statefull_widget/widget/Input.dart';
import 'package:statefull_widget/widget/Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;

  double kelvin = 0;

  double reamor = 0;

  konversi() {
    setState(() {
      inputUser = double.parse(etInput.text);
      reamor = 4 / 5 * inputUser;
      kelvin = inputUser + 273;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Result(
                    result: kelvin,
                    title: 'Suhu dalam Kelvin',
                  ),
                  Result(
                    result: reamor,
                    title: 'Suhu dalam Reamor',
                  ),
                ],
              ),
              Convert(
                konversi: konversi,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
