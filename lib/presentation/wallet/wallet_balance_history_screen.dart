import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/orders/orders_screen.dart';

class WalletBalanceHistoryScreen extends StatefulWidget {
  const WalletBalanceHistoryScreen({Key? key}) : super(key: key);

  @override
  WalletBalanceHistoryScreenState createState() =>
      WalletBalanceHistoryScreenState();
}

class WalletBalanceHistoryScreenState
    extends State<WalletBalanceHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          title: const Text(
            'Balance details',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
            padding: EdgeInsets.symmetric(horizontal: 16),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 1.5,
                color: Colors.deepOrange,
              ),
              insets: EdgeInsets.symmetric(horizontal: 16),
            ),
            indicatorColor: Colors.deepOrange,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'TOP-UP'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NoOrdersPlaceHolder(),
            NoOrdersPlaceHolder(),
          ],
        ),
      ),
    );
  }
}
