import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _money = TextEditingController();
  String _dropdown1 = 'USD';
  String _dropdown2 = 'THB';
  var items1 = [
    'USD',
    'THB',
    'JPY',
  ];
  var items2 = ['USD', 'THB', 'JPY'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Currency Exchanges",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.indigo.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Enter your money',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/1280px-Flag_of_Thailand.svg.png',
                          height: 30,
                          width: 50,
                        ),
                      ),
                      Text(
                        'BATH',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/220px-Flag_of_the_United_States.svg.png',
                          height: 30,
                          width: 50,
                        ),
                      ),
                      Text(
                        'USD',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/800px-Flag_of_Japan.svg.png',
                          height: 30,
                          width: 50,
                        ),
                      ),
                      Text(
                        'YEN',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: _money,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: '0.0',
                        suffixIcon: Text(
                          'amount',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(minWidth: 0, minHeight: 0)),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Currency',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton(
                          value: _dropdown1,
                          isDense: true,
                          isExpanded: true,
                          items: items1.map((String items1) {
                            return DropdownMenuItem(
                              value: items1,
                              child:
                                  Text(items1, style: TextStyle(fontSize: 20)),
                            );
                          }).toList(),
                          onChanged: (String? newValue1) {
                            setState(() {
                              _dropdown1 = newValue1!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Currency Exchanges',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton(
                          value: _dropdown2,
                          isDense: true,
                          isExpanded: true,
                          items: items2.map((String items2) {
                            return DropdownMenuItem(
                              value: items2,
                              child:
                                  Text(items2, style: TextStyle(fontSize: 20)),
                            );
                          }).toList(),
                          onChanged: (String? newValue1) {
                            setState(() {
                              _dropdown2 = newValue1!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => home_screen(
                    money: _money.text,
                    dropdown1: _dropdown1,
                    dropdown2: _dropdown2,
                  ),
                ),
              );
            },
            child: Text('Go to Exchanges'),
          )
        ]),
      ),
    );
  }
}
