import 'package:flutter/material.dart';

class BookingPaymentSheet extends StatelessWidget {
  const BookingPaymentSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Text(
            'Payment method',
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey.shade900,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          const PaymentMethodTile(
            title: 'Online Payment',
            subtitle: 'Enjoy wallet and other cashless payment!',
            icon: Icons.phone_iphone,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Divider(),
          ),
          const PaymentMethodTile(
            title: 'Cash',
            icon: Icons.credit_card,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodTile extends StatefulWidget {
  const PaymentMethodTile({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String? subtitle;

  @override
  _PaymentMethodTileState createState() => _PaymentMethodTileState();
}

class _PaymentMethodTileState extends State<PaymentMethodTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Icon(
                widget.icon,
                size: 18,
              ),
            ),
            Positioned(
              left: 35,
              top: widget.subtitle != null ? 17 : 20,
              bottom: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  widget.subtitle != null
                      ? Text(
                          widget.subtitle!,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Visibility(
                visible: isSelected,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 17,
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
