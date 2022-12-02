import 'package:flutter/material.dart';
import 'package:newproject/screens/login_page/login.dart';
import 'package:newproject/wallet_screen/wallet.dart';

class IconsAvatarScreen extends StatelessWidget {
  const IconsAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          _build_Icons_AvatarList(
            'Bus',
            Icons.bus_alert_sharp,
          ),
          _build_Icons_AvatarList(
            'Ticket',
            Icons.airplane_ticket_outlined,
          ),
          _build_Icons_AvatarList(
            'Hotel Booking',
            Icons.hotel,
          ),
          _build_Icons_AvatarList(
            'Taxi',
            Icons.local_taxi,
          ),
          _build_Icons_AvatarList(
            'Top Up',
            Icons.send_to_mobile,
          ),
          _build_Icons_AvatarList(
            'Pharmacy',
            Icons.local_pharmacy,
          ),
          _build_Icons_AvatarList(
            'Grocery',
            Icons.local_grocery_store,
          ),
          _build_Icons_AvatarList(
            'Food',
            Icons.food_bank,
          ),
          // _buildAvatarList('', Icons.home),
        ],
      ),
    );
  }
}

_build_Icons_AvatarList(
  String name,
  IconData icon,
  // void Function() onPressed,
) {
  return Column(
    children: [
      Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(
            icon,
            size: 35,
            color: Colors.red,
          ),
        ),
      ),
      Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}
