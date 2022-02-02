import 'package:flutter/material.dart';

class AdIdScreen extends StatelessWidget {
  const AdIdScreen({
    Key? key,
    required this.admob_banner,
    required this.ads_priority,
    required this.facebook_rewarded,
    required this.admob_rewarded,
    required this.facebook_interstitial,
    required this.admob_interstitial,
    required this.facebook_banner,
  }) : super(key: key);

  final String admob_banner;
  final String ads_priority;
  final String facebook_rewarded;
  final String admob_rewarded;
  final String facebook_interstitial;
  final String admob_interstitial;
  final String facebook_banner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("Admob_Banner : ", style: heading()),
              Text("          ${admob_banner}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Row(
            crossAxisAlignment: startAlignment,
            children: [
              Text("ads_priority : ", style: heading()),
              Text(" ${ads_priority}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("facebook_rewarded : ", style: heading()),
              Text("          ${facebook_rewarded}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("admob_rewarded : ", style: heading()),
              Text("          ${admob_rewarded}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("facebook_interstitial : ", style: heading()),
              Text("          ${facebook_interstitial}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("admob_interstitial : ", style: heading()),
              Text("          ${admob_interstitial}", style: ansStyle()),
            ],
          ),
          SizedBox(height: height),
          Column(
            crossAxisAlignment: startAlignment,
            children: [
              Text("facebook_banner : ", style: heading()),
              Text("          ${facebook_banner}", style: ansStyle()),
            ],
          ),
        ],
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
const double height = 35;
