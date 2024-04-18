import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class TransactionView extends StatefulWidget {
  TransactionView(
      {super.key,
      required this.RideType,
      required this.date,
      required this.amount,
      required this.credit});

  final String RideType;
  final String date;
  final String amount;
  final bool credit;

  @override
  State<TransactionView> createState() => StateChild();
}

class TransactionViewState extends State<TransactionView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
          padding: EdgeInsets.all(10),
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.RideType,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[800]),
                  ),
                  Text(
                    widget.date,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.grey[700]),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  widget.credit
                      ? '+${widget.amount}'
                      : '-${widget.amount}',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: widget.credit
                          ? Colors.blue.shade900
                          : Colors.red),
                ),
              )
            ],
          )),
    ).padding(all: 10);
  }
}

main() async {
  return buildApp(appHome: TransactionView(
    amount: '1313',
    credit: false,
    date: '1st Apr 1990',
    RideType: 'Jio Recharge',
  ).center());
}
