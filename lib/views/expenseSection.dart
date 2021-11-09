// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wallet/config/data.dart';
import 'package:wallet/views/pieChart.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Expenses",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: expenses
                          .map((value) => Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        pieColors[expenses.indexOf(value)],
                                  ),
                                  const SizedBox(width: 18),
                                  Text(
                                    value['name'],
                                    style: const TextStyle(fontSize: 18),
                                  )
                                ]),
                              ))
                          .toList(),
                    ))),
            Expanded(flex: 6, child: PieChart())
          ],
        ),
      ],
    );
  }
}
