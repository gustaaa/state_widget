import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Angka Dalam Celcius',
                  labelText: 'Masukkan Angka Dalam Celcius',
                ),
                controller: etInput,
                keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //   FilteringTextInputFormatter.digitsOnly
                // ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Kelvin",
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        '$kelvin',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Reamor",
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        '$reamor',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                  onPressed: konversi,
                  child: Text(
                    "Konversi Suhu",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
