import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class CardView extends StatefulWidget {
  CardView(
      {super.key,
      required this.icon,
      required this.cardNumber,
      required this.holderName,
      required this.expiryDate});

  final String icon;
  final String cardNumber;
  final String holderName;
  final String expiryDate;

  @override
  State<CardView> createState() => StateChild();
}

class CardViewState extends State<CardView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: 200,
          width: 400,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade900),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Number',
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        widget.cardNumber,
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    child: Image.asset(widget.icon),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CARD HOLDERNAME',
                        style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                      ),
                      Text(
                        widget.holderName,
                        style: TextStyle(fontSize: 25, color: Colors.grey[100]),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EXPIRY DATE',
                        style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                      ),
                      Text(
                        widget.expiryDate,
                        style: TextStyle(fontSize: 25, color: Colors.grey[100]),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    ).padding(all: 10);
  }
}

main() async {
  return buildApp(appHome: CardView(
    icon: 'Assets/001-paypal.png',
    cardNumber: '**** **** **** 0293',
    expiryDate: '03-02-1923',
    holderName: 'Joan Louji',
  ).center());
}
