import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/home/booking/booking_screen.dart';
import 'package:sizer/sizer.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({
    Key? key,
    this.isPickup = false,
  }) : super(key: key);

  final bool isPickup;

  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
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
                    child: TextFormField(
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10),
                              widget.isPickup
                                  ? Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.deepOrange,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  : const Icon(
                                      Icons.location_on,
                                      color: Colors.deepOrange,
                                      size: 17,
                                    ),
                            ],
                          ),
                        ),
                        hintText: 'Pick-up location',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            // color: Colors.black.withOpacity(0.20),
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            // color: Colors.black.withOpacity(0.20),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const _NewLocationTile(
                icon: Icons.gps_fixed,
                title: 'Location access is off',
                subtitle: 'Tap here to turrn on',
              ),
              const _NewLocationTile(
                icon: Icons.bookmark,
                hasTrailing: true,
                title: 'Saved Address',
                color: Colors.deepOrange,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingLocationScreen(),
                    ),
                  );
                },
                child: const _NewLocationTile(
                  icon: Icons.access_alarm,
                  title: '688, Ronquillo Street',
                  subtitle:
                      '688 Ronquillo St, Quiapo, Manila, 1001 Metro Manila '
                      'Philppines',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _NewLocationTile extends StatelessWidget {
  const _NewLocationTile({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.color,
    this.hasTrailing = false,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color? color;
  final String? subtitle;
  final bool hasTrailing;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 0,
        minWidth: double.infinity,
        maxHeight: 77,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 0,
            bottom: 0,
            child: Icon(icon, color: color),
          ),
          Positioned(
            left: 50,
            top: 0,
            bottom: 0,
            right: 5.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    subtitle != null
                        ? Flexible(
                            child: Text(
                              subtitle!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.arrow_forward_ios, size: 15),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 12.w,
            right: 16,
            child: const Divider(),
          ),
        ],
      ),
    );
  }
}
