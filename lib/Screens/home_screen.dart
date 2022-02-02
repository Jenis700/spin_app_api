// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:spin_app_1/Screens/ad_id__screen.dart';
import 'package:spin_app_1/Screens/keyword_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.debugMac,
    required this.privacy_link,
    required this.spin_coin,
    required this.version,
    required this.Status,
    //!
    required this.admob_banner,
    required this.ads_priority,
    required this.facebook_rewarded,
    required this.admob_rewarded,
    required this.facebook_interstitial,
    required this.admob_interstitial,
    required this.facebook_banner,
  }) : super(key: key);

  final String debugMac;
  final String privacy_link;
  final spin_coin;
  final version;
  final bool Status;
//!
  final String admob_banner;
  final String ads_priority;
  final String facebook_rewarded;
  final String admob_rewarded;
  final String facebook_interstitial;
  final String admob_interstitial;
  final String facebook_banner;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: SafeArea(
            child: SizedBox(
              height: 50,
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.orange.shade600,
                indicatorColor: Colors.orange.shade600,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.deepOrange),
                  insets: EdgeInsets.only(left: 15, right: 15),
                ),
                tabs: const [
                  Text(
                    "KeyWord",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ad_Id",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            KeywordScreen(
              DebugMac: debugMac,
              privacy_link: privacy_link,
              spin_coin: '$spin_coin',
              version: '$version',
              status: Status,
            ),
            AdIdScreen(
              admob_banner: admob_banner,
              ads_priority: ads_priority,
              facebook_rewarded: facebook_rewarded,
              admob_rewarded: admob_rewarded,
              facebook_interstitial: facebook_interstitial,
              admob_interstitial: admob_interstitial,
              facebook_banner: facebook_banner,
            ),
          ],
        ),
      ),
    );
  }
}
