import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:spin_app_1/Model/spin_class.dart';
import 'package:spin_app_1/Screens/home_screen.dart';
import 'package:http/http.dart' as http;

Future<Spin> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://us-central1-international-dress-up.cloudfunctions.net/ludo/mKeyword/android'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Spin.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class StartButtonScreen extends StatefulWidget {
  const StartButtonScreen({Key? key}) : super(key: key);

  @override
  State<StartButtonScreen> createState() => _StartButtonScreenState();
}

class _StartButtonScreenState extends State<StartButtonScreen> {
  late Future<Spin> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("data"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FutureBuilder<Spin>(
                  future: futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return HomeScreen(
                        debugMac: snapshot.data!.data.keyword.debugMac,
                        privacy_link: snapshot.data!.data.keyword.privacyLink,
                        spin_coin: snapshot.data!.data.keyword.spinCoin,
                        version: snapshot.data!.data.keyword.version,
                        Status: snapshot.data!.status,
                        //!
                        admob_banner: snapshot.data!.data.adId.admobBanner,
                        admob_interstitial:
                            snapshot.data!.data.adId.admobInterstitial,
                        admob_rewarded: snapshot.data!.data.adId.admobRewarded,
                        ads_priority: snapshot.data!.data.adId.adsPriority,
                        facebook_banner:
                            snapshot.data!.data.adId.facebookBanner,
                        facebook_interstitial:
                            snapshot.data!.data.adId.facebookInterstitial,
                        facebook_rewarded:
                            snapshot.data!.data.adId.facebookRewarded,
                      );
                    } else if (snapshot.hasError) {
                      return Scaffold(
                        body: Center(
                          child: AlertDialog(
                            title: Text('Welcome'),
                            content: Text('Cheak your internet connection!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Ok'),
                              ),
                              SizedBox(width: 90),
                            ],
                          ),
                        ),
                      );
                    }

                    return Scaffold(
                      body: Center(
                        child: const CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
