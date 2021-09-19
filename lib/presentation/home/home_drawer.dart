import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/orders/orders_screen.dart';
import 'package:lalamove_copy/presentation/settings/settings.dart';
import 'package:lalamove_copy/presentation/wallet/wallet_screen.dart';

import 'package:sizer/sizer.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 26),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.person, size: 90, color: Colors.grey),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Dan',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrdersScreen()));
                },
                title: Row(
                  children: const [
                    Icon(Icons.settings, color: Colors.deepOrange),
                    SizedBox(width: 10),
                    Text('Orders'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WalletScreen(),
                    ),
                  );
                },
                title: Row(
                  children: const [
                    Icon(Icons.settings, color: Colors.deepOrange),
                    SizedBox(width: 10),
                    Text('Wallet'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                ),
                title: Row(
                  children: const [
                    Icon(Icons.settings, color: Colors.deepOrange),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '''You're in ''',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Manila',
                              style: TextStyle(color: Colors.deepOrange),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
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
    );
  }
}
