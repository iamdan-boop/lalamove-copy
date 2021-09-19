import 'package:flutter/material.dart';

class BookingRemarks extends StatefulWidget {
  const BookingRemarks({Key? key}) : super(key: key);

  @override
  _BookingRemarksState createState() => _BookingRemarksState();
}

class _BookingRemarksState extends State<BookingRemarks> {
  final remarksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Order remarks',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox.expand(
                child: TextFormField(
                  maxLines: 6,
                  controller: remarksController,
                  decoration: InputDecoration(
                    hintText:
                        '''Add any important instructions about your delivery''',
                    hintMaxLines: 2,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    counterText:
                        'Characters left: ${500 - remarksController.value.text.length}',
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.deepOrange,
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
