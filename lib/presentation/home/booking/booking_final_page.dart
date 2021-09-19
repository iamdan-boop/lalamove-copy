import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/coupons/coupons_screen.dart';
import 'package:lalamove_copy/presentation/home/booking/booking_finding_driver.dart';
import 'package:lalamove_copy/presentation/home/booking/booking_vehicle_sheet.dart';
import 'package:sizer/sizer.dart';

import 'widgets/booking_number_sheet.dart';
import 'widgets/booking_payment_sheet.dart';

class BookingFinalPageScreen extends StatefulWidget {
  const BookingFinalPageScreen({Key? key}) : super(key: key);

  @override
  _BookingFinalPageScreenState createState() => _BookingFinalPageScreenState();
}

class _BookingFinalPageScreenState extends State<BookingFinalPageScreen> {
  bool isFavoriteDriversFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Add more details',
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
                        buildDots(isSelected: true),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const SizedBox(width: 40),
              ],
            ),
            SizedBox(
              height: 17.h,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Positioned(
                    left: 16,
                    right: 16,
                    bottom: -60,
                    child: BookingRemarksBar(),
                  ),
                  Positioned(
                    top: 15,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pickup Time',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'ASAP',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.two_wheeler, size: 50),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            _DetailsTile(
              icon: Icons.call,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: const BookingNumberSheet(),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                );
              },
              title: '+63 9955430420',
              subtitle: 'Order Contact Number',
            ),
            _DetailsTile(
              icon: Icons.people,
              onTap: () {},
              title: 'Favourite drivers first',
              trailing: Switch(
                activeColor: Colors.deepOrange,
                value: isFavoriteDriversFirst,
                onChanged: (val) {
                  setState(() {
                    isFavoriteDriversFirst = !isFavoriteDriversFirst;
                  });
                },
              ),
            ),
            _DetailsTile(
              icon: Icons.credit_card,
              onTap: () {
                showSheet(
                  context: context,
                  widget: const BookingPaymentSheet(),
                );
              },
              title: 'Cash',
              subtitle: 'Payment method',
            ),
            _DetailsTile(
              icon: Icons.confirmation_number,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CouponsScreen(),
                  ),
                );
              },
              title: 'Add Coupon',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
                  widget: BookingVehicleSheet(
                    onClose: () {
                      Navigator.pop(context);
                    },
                  ),
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
                        builder: (context) => const FindingADriverScreen(),
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
      ),
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
    required Widget widget,
  }) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => widget,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
    );
  }
}

class _DetailsTile extends StatefulWidget {
  const _DetailsTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.color,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color? color;
  final String? subtitle;
  final Function() onTap;
  final Widget? trailing;

  @override
  State<_DetailsTile> createState() => _DetailsTileState();
}

class _DetailsTileState extends State<_DetailsTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 70,
          minWidth: double.infinity,
          maxHeight: 70,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 0,
              bottom: 0,
              child: Icon(
                widget.icon,
                color: widget.color ?? Colors.deepOrange,
              ),
            ),
            Positioned(
              left: 80,
              top: widget.subtitle != null ? 17 : 23,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  widget.subtitle != null
                      ? Text(
                          widget.subtitle!,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade500,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 0,
              bottom: 0,
              child: widget.trailing != null
                  ? widget.trailing!
                  : Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade700,
                      size: 18,
                    ),
            ),
            const Positioned(
              left: 20,
              right: 20,
              bottom: 0,
              child: Divider(),
            )
          ],
        ),
      ),
    );
  }
}

class BookingRemarksBar extends StatelessWidget {
  const BookingRemarksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        print('onTap');
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            const Icon(
              Icons.message,
              color: Colors.deepOrange,
            ),
            const SizedBox(width: 30),
            Text(
              'Add notes to your driver',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade500,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade600,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
