import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookingLocationScreen extends StatefulWidget {
  const BookingLocationScreen({Key? key}) : super(key: key);

  @override
  _BookingLocationScreenState createState() => _BookingLocationScreenState();
}

class _BookingLocationScreenState extends State<BookingLocationScreen> {
  bool isSavedAddress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 10,
              top: 16,
              right: 10,
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  elevation: 1,
                  child: Center(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          top: 0,
                          bottom: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey.shade700,
                                  size: 17,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.deepOrange,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20.w,
                          top: 10,
                          right: 10,
                          child: Column(
                            children: [
                              const Text(
                                '146 Purok 3, Calamba, 4027 Laguna,'
                                'Philippines',
                                style: TextStyle(
                                  fontSize: 17,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: const [
                                  Flexible(
                                    child: Text(
                                      '146 Purok 3, Calamba, 4027 Laguna, '
                                      'Philippines',
                                      maxLines: 2,
                                      style: TextStyle(
                                        overflow: TextOverflow.clip,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 58.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        'Address Details',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.20),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Floor or unit number',
                            labelStyle: TextStyle(color: Colors.grey.shade400),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '905 123 4567',
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
                          suffixIcon: const Icon(Icons.perm_contact_cal),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.20),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Contact name',
                            labelStyle: TextStyle(color: Colors.grey.shade400),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: isSavedAddress,
                            onChanged: (val) {
                              setState(() {
                                isSavedAddress = val!;
                              });
                            },
                            fillColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.deepOrange,
                            ),
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                          const Text(
                            'Save this address',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
