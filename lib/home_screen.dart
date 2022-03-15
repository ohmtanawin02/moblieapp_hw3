import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';

class home_screen extends StatelessWidget {
  String money, dropdown1, dropdown2;

  home_screen(
      {Key? key,
      required this.money,
      required this.dropdown1,
      required this.dropdown2})
      : super(key: key);

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
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            SizedBox(
                              width: 10,
                            ),
                          ],
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                Card(
                                  elevation: 5,
                                  margin: const EdgeInsets.all(20.0),
                                  child: ListTile(
                                    title: Text('Amount'),
                                    subtitle: Text('$money'),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  margin: const EdgeInsets.all(20.0),
                                  child: ListTile(
                                    title: Text('Currency'),
                                    subtitle: Text('$dropdown1'),
                                  ),
                                ),
                                Card(
                                    elevation: 5,
                                    margin: const EdgeInsets.all(20.0),
                                    child: ListTile(
                                      title: Text('Currency Exchanges'),
                                      subtitle: Text('$dropdown2'),
                                    )),
                                Card(
                                    elevation: 5,
                                    margin: const EdgeInsets.all(20.0),
                                    child: ListTile(
                                        title: Text('Money Result'),
                                        subtitle: Text('' +
                                            Num_add(dropdown1, dropdown2,
                                                    double.parse(money))
                                                .toString()))),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Go Back'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double Num_add(dropdown1, dropdown2, double m) {
    double total = 0;
    if (dropdown1 == 'USD' && dropdown2 == 'THB') {
      total += m * 33.17;
    } else if (dropdown1 == 'USD' && dropdown2 == 'JPY') {
      total += m * 115.62;
    } else if (dropdown1 == 'THB' && dropdown2 == 'USD') {
      total += m * 0.030;
    } else if (dropdown1 == 'THB' && dropdown2 == 'JPY') {
      total += m * 3.49;
    } else if (dropdown1 == 'JPY' && dropdown2 == 'USD') {
      total += m * 0.0086;
    } else if (dropdown1 == 'JPY' && dropdown2 == 'THB') {
      total += m * 0.29;
    }
    return total;
  }
}
