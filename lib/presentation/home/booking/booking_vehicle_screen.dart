import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/home/booking/booking_final_page.dart';
import 'package:sizer/sizer.dart';
import 'booking_vehicle_sheet.dart';
import 'booking_vehicle_tile.dart';

class BookingVehicleScreen extends StatefulWidget {
  const BookingVehicleScreen({Key? key}) : super(key: key);

  @override
  _BookingVehicleScreenState createState() => _BookingVehicleScreenState();
}

class _BookingVehicleScreenState extends State<BookingVehicleScreen> {
  final sKey = GlobalKey<ScaffoldState>();
  bool show = false;
  bool showBottomView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey.shade500,
                    size: 19,
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Select Vehicle',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        buildDots(isSelected: true),
                        const SizedBox(width: 5),
                        buildDots(isSelected: true),
                        const SizedBox(width: 5),
                        buildDots(isSelected: false),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info_outline,
                    size: 19,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: BookingVehicleTile(
                      onShow: () {
                        setState(() {
                          showBottomView = !showBottomView;
                        });
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: showBottomView
          ? Container(
              height: 20.h,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0, -5),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      showSheet(
                        context: context,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Hero(
                          tag: 'total',
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Spacer(),
                        Hero(
                          tag: 'total_price',
                          child: Text(
                            '₱353',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.expand_less,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Hero(
                    tag: 'place_order_btn',
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const BookingFinalPageScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Place Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget buildDots({
    required bool isSelected,
  }) {
    return Container(
      height: 3,
      width: 60,
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepOrange : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  void showSheet({
    required BuildContext context,
  }) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BookingVehicleSheet(
        onClose: () {
          Navigator.pop(context);
        },
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
    );
  }
}

// isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(15),
//           topRight: Radius.circular(15),
//         ),
//       ),