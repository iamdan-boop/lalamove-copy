import 'package:flutter/material.dart';

class AvailableVehiclesScreren extends StatelessWidget {
  const AvailableVehiclesScreren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        title: const Text(
          'Available Vehicles',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const _AvailableVehiclesTile();
        },
      ),
    );
  }
}

class _AvailableVehiclesTile extends StatelessWidget {
  const _AvailableVehiclesTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      height: 100,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://www.lalamove.com/hubfs/Lalamove%20Website%202020/Share_Vehicle_icon/IllustratedIcon-Bike.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Motorcycle',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Flexible(
                      child: Text(
                        'Cheapest 4-wheel, good forr cakes/multiple small items. MAX: 20 kg',
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.outbox,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '2.1 x 1 x 0.9 Meter . Up to 600 kg',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
