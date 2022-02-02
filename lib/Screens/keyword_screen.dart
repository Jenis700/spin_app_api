// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class KeywordScreen extends StatelessWidget {
  const KeywordScreen({
    Key? key,
    required this.DebugMac,
    required this.privacy_link,
    required this.spin_coin,
    required this.version,
    required this.status,
  }) : super(key: key);

  final String DebugMac;
  final String privacy_link;
  final String spin_coin;
  final String version;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: height / 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Status : ",
                  style: heading(),
                ),
                Text(
                  "${status}",
                  style: ansStyle(),
                ),
              ],
            ),
            SizedBox(height: height),
            Row(
              children: [
                Text(
                  "version : ",
                  style: heading(),
                ),
                Text(
                  "${version}",
                  style: ansStyle(),
                ),
              ],
            ),
            SizedBox(height: height),
            Row(
              children: [
                Text(
                  "DebugMac : ",
                  style: heading(),
                ),
                Text(
                  "${DebugMac}",
                  style: ansStyle(),
                ),
              ],
            ),
            SizedBox(height: height),
            Column(
              crossAxisAlignment: startAlignment,
              children: [
                Text(
                  "privacy_link : ",
                  style: heading(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "${privacy_link}",
                    style: ansStyle(),
                  ),
                ),
              ],
            ),
            SizedBox(height: height),
            Column(
              crossAxisAlignment: startAlignment,
              children: [
                Text(
                  "spin coin :",
                  style: heading(),
                ),
                Text(
                  "                 ${spin_coin}",
                  style: ansStyle(),
                ),
              ],
            ),
            SizedBox(height: height),
          ],
        ),
      ),
    );
  }

  TextStyle ansStyle() {
    return TextStyle(
        color: Colors.green, fontSize: 15, fontWeight: FontWeight.w500);
  }

  TextStyle heading() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
    );
  }
}

CrossAxisAlignment startAlignment = CrossAxisAlignment.start;
const double height = 40;
