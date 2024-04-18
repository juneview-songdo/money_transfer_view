import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../widget.card/view.dart';
import '../widget.quick_access/view.dart';
import '../widget.transaction/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SvgPicture.asset(
            'assets/view/money_transfer_view/menu-open.svg',
            colorFilter: ColorFilter.mode(Colors.grey[900]!, BlendMode.srcIn),
          ).padding(all: 10),
          actions: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80",
                ),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Good Evening',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('Joan Louji',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4)),
                ),
                Container(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: 
                    ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        QuickAccessView(
                          color: 'red',
                          icon: 'exchange',
                          name: 'Money Exchange',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'bank',
                          name: 'Bank Withdrawal',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'mobile_phone',
                          name: 'Mobile Prepaid',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'exchange',
                          name: 'DTH Recharge',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'book',
                          name: 'Passbook',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'bank',
                          name: 'Bank Account',
                        ),
                        QuickAccessView(
                          color: 'red',
                          icon: 'white',
                          name: 'Fee Payments',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'trello',
                          name: 'Transactions',
                        ),
                        QuickAccessView(
                          color: 'white',
                          icon: 'exchange',
                          name: 'UPI',
                        ), 
                      ],
                    ),
                  ),
                ),
                Text(
                  'Cards',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: 
                    ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CardView(
                          icon: 'Assets/001-paypal.png',
                          cardNumber: '**** **** **** 0293',
                          expiryDate: '03-02-1923',
                          holderName: 'Joan Louji',
                        ),
                        CardView(
                          icon: 'Assets/001-paypal.png',
                          cardNumber: '**** **** **** 0213',
                          expiryDate: '22-05-1923',
                          holderName: 'Racheal',
                        ),
                        CardView(
                          icon: 'Assets/001-paypal.png',
                          cardNumber: '**** **** **** 0531',
                          expiryDate: '12-06-2013',
                          holderName: 'John',
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Transaction History',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: 
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      TransactionView(
                        amount: '100',
                        credit: true,
                        date: '4st Jun  1990',
                        RideType: 'Transfer from Joan',
                      ),
                      TransactionView(
                        amount: '1313',
                        credit: false,
                        date: '1st Apr 1990',
                        RideType: 'Jio Recharge',
                      ),
                      TransactionView(
                        amount: '20',
                        credit: true,
                        date: '23th May 1990',
                        RideType: 'Transfer from Racheal',
                      ),
                      TransactionView(
                        amount: '1032',
                        credit: false,
                        date: '22st May 1990',
                        RideType: 'Vijay Super Market',
                      ),
                      TransactionView(
                        amount: '800',
                        credit: false,
                        date: '15st May 1990',
                        RideType: 'Transfer to LICET',
                      ),
                      TransactionView(
                        amount: '301',
                        credit: true,
                        date: '12st May 1990',
                        RideType: 'Jio Fi',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

main() async {
  return buildApp(appHome: NewView());
}
