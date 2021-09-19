import 'package:flutter/material.dart';

class BookingRemarks extends StatefulWidget {
  const BookingRemarks({Key? key}) : super(key: key);

  @override
  _BookingRemarksState createState() => _BookingRemarksState();
}

class _BookingRemarksState extends State<BookingRemarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Order remarks',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
