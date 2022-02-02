//! spin
class Spin {
  bool status;
  Data data;

  Spin({
    required this.status,
    required this.data,
  });

  factory Spin.fromJson(Map<String, dynamic> json) => Spin(
        status: json['status'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data.toJson(),
      };
}

//! data
class Data {
  Keyword keyword;
  AdId adId;

  Data({
    required this.keyword,
    required this.adId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        keyword: Keyword.fromJson(json['keyword']),
        adId: AdId.fromJson(json['ad_id']),
      );

  Map<String, dynamic> toJson() => {
        'keyword': keyword.toJson(),
        'ad_id': adId.toJson(),
      };
}

//! key word
class Keyword {
  dynamic spinCoin;
  String privacyLink;
  dynamic version;
  String debugMac;

  Keyword({
    required this.spinCoin,
    required this.privacyLink,
    required this.version,
    required this.debugMac,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) => Keyword(
        debugMac: json['DebugMac'],
        privacyLink: json['privacy_link'],
        spinCoin: json['spin_coin'],
        version: json['version'],
      );

  Map<String, dynamic> toJson() => {
        'spin_coin': spinCoin,
        'privacy_link': privacyLink,
        'version': version,
        'DebugMac': debugMac,
      };
}

//! ad id
class AdId {
  String admobBanner;
  String admobInterstitial;
  String admobRewarded;
  String facebookBanner;
  String facebookInterstitial;
  String adsPriority;
  String facebookRewarded;

  AdId({
    required this.admobBanner,
    required this.admobInterstitial,
    required this.admobRewarded,
    required this.facebookBanner,
    required this.facebookInterstitial,
    required this.adsPriority,
    required this.facebookRewarded,
  });

  factory AdId.fromJson(Map<String, dynamic> json) => AdId(
        admobBanner: json['admob_banner'],
        admobInterstitial: json['admob_interstitial'],
        admobRewarded: json['admob_rewarded'],
        facebookBanner: json['facebook_banner'],
        facebookInterstitial: json['facebook_interstitial'],
        adsPriority: json['ads_priority'],
        facebookRewarded: json['facebook_rewarded'],
      );

  Map<String, dynamic> toJson() => {
        'admob_banner': admobBanner,
        'admob_interstitial': admobInterstitial,
        'admob_rewarded': admobRewarded,
        'facebook_banner': facebookBanner,
        'facebook_interstitial': facebookInterstitial,
        'ads_priority': adsPriority,
        'facebook_rewarded': facebookRewarded,
      };
}
