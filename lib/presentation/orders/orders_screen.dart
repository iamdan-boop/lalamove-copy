import 'package:flutter/material.dart';

import 'archives.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.deepOrange,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
          title: const Text(
            'Orders',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArchivesScreen(),
                ),
              ),
              icon: const Icon(
                Icons.mail,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            NoOrdersPlaceHolder(),
            NoOrdersPlaceHolder(),
            NoOrdersPlaceHolder(),
          ],
        ),
      ),
    );
  }
}

class NoOrdersPlaceHolder extends StatelessWidget {
  const NoOrdersPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          FlutterLogo(size: 50),
          SizedBox(height: 30),
          Text('No orders available at the moment.'),
        ],
      ),
    );
  }
}
