import 'package:bmi_app/util/DeviceUnitl.dart';
import 'package:flutter/material.dart';

/// A card widget that displays the BMI app title along with the user's name.
Card bmiAppTitle() {
  return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        title: FutureBuilder<String>(
          future: getDeviceUserName(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While waiting for the future to complete, show a loading indicator
              return CircularProgressIndicator();
            }
            if (snapshot.hasData && snapshot.data != null) {
              // If data is successfully fetched, display the greeting with the username
              return Text(
                'HI ${snapshot.data}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              // If no data is available, display a default welcome message
              return const Text(
                'Welcome',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            }
          },
        ),
        leading: const Icon(
          Icons.waving_hand_outlined,
          color: Colors.black,
        ),
      ),
    ),
  );
}
