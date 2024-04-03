import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Flexible(
                child: OpenStreetMapSearchAndPick(
                  buttonText: 'Set Current Location',
                  locationPinText: 'Location',
                  onPicked: (pickedData) {
                   pickedData.latLong.longitude;
                   pickedData.latLong.latitude;
                   pickedData.addressName;
                   pickedData.address;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
