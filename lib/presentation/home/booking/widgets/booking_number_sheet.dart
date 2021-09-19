import 'package:flutter/material.dart';

class BookingNumberSheet extends StatefulWidget {
  const BookingNumberSheet({Key? key}) : super(key: key);

  @override
  _BookingNumberSheetState createState() => _BookingNumberSheetState();
}

class _BookingNumberSheetState extends State<BookingNumberSheet> {
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Order contact number',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: numberController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.20),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '+63',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numberController.text = '';
                        });
                      },
                      child: const Icon(
                        Icons.cancel,
                        size: 17,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.perm_contact_cal_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10)
                  ],
                ),
                hintText: '905 123 4567',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Update',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
