import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class QuickAccessView extends StatefulWidget {
  QuickAccessView(
      {super.key, required this.icon, required this.name, required this.color});

  final String icon;
  final String name;
  final String color;

  @override
  State<QuickAccessView> createState() => StateChild();
}

class QuickAccessViewState extends State<QuickAccessView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: 100,
          width: 200,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: Colors.grey.withOpacity(0.35)),
              borderRadius: BorderRadius.circular(20),
              color:
                  widget.color == 'red' ? Colors.blue.shade700 : Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.color == "red" ? Colors.grey[200] : Colors.blue,
                ),
                child:
                SvgPicture.asset('assets/view/money_transfer_view/trello.svg',
                    colorFilter: ColorFilter.mode(
                        widget.color == "red"
                            ? Colors.grey[800]!
                            : Colors.grey[200]!,
                        BlendMode.srcIn
                    ),
                    height: 15,
                    width: 15),
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: widget.color == 'red'
                        ? Colors.grey[200]
                        : Colors.grey[700]),
              )
            ],
          )),
    ).padding(all: 10);
  }
}

main() async {
  return buildApp(
      appHome: QuickAccessView(
    color: 'red',
    icon: 'exchange',
    name: 'Money Exchange',
  ).center());
}
