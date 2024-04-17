class ConcertDetailDto {
  ConcertDetailDto({
    this.mt20id,
    this.prfnm,
    this.prfpdfrom,
    this.prfpdto,
    this.fcltynm,
    this.prfcast,
    this.prfcrew,
    this.prfruntime,
    this.prfage,
    this.entrpsnm,
    this.pcseguidance,
    this.poster,
    this.sty,
    this.genrenm,
    this.openrun,
    this.prfstate,
    this.styurls,
    this.mt10id,
    this.dtguidance,
  });

  ConcertDetailDto.fromJson(dynamic json) {
    mt20id = json['mt20id'];
    prfnm = json['prfnm'];
    prfpdfrom = json['prfpdfrom'];
    prfpdto = json['prfpdto'];
    fcltynm = json['fcltynm'];
    prfcast = json['prfcast'];
    prfcrew = json['prfcrew'];
    prfruntime = json['prfruntime'];
    prfage = json['prfage'];
    entrpsnm = json['entrpsnm'];
    pcseguidance = json['pcseguidance'];
    poster = json['poster'];
    sty = json['sty'];
    genrenm = json['genrenm'];
    openrun = json['openrun'];
    prfstate = json['prfstate'];
    styurls =
        json['styurls'] != null ? Styurls.fromJson(json['styurls']) : null;
    mt10id = json['mt10id'];
    dtguidance = json['dtguidance'];
  }

  String? mt20id;
  String? prfnm;
  String? prfpdfrom;
  String? prfpdto;
  String? fcltynm;
  String? prfcast;
  String? prfcrew;
  String? prfruntime;
  String? prfage;
  String? entrpsnm;
  String? pcseguidance;
  String? poster;
  String? sty;
  String? genrenm;
  String? openrun;
  String? prfstate;
  Styurls? styurls;
  String? mt10id;
  String? dtguidance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mt20id'] = mt20id;
    map['prfnm'] = prfnm;
    map['prfpdfrom'] = prfpdfrom;
    map['prfpdto'] = prfpdto;
    map['fcltynm'] = fcltynm;
    map['prfcast'] = prfcast;
    map['prfcrew'] = prfcrew;
    map['prfruntime'] = prfruntime;
    map['prfage'] = prfage;
    map['entrpsnm'] = entrpsnm;
    map['pcseguidance'] = pcseguidance;
    map['poster'] = poster;
    map['sty'] = sty;
    map['genrenm'] = genrenm;
    map['openrun'] = openrun;
    map['prfstate'] = prfstate;
    if (styurls != null) {
      map['styurls'] = styurls?.toJson();
    }
    map['mt10id'] = mt10id;
    map['dtguidance'] = dtguidance;
    return map;
  }
}

class Styurls {
  Styurls({
    this.styurl,
  });

  Styurls.fromJson(dynamic json) {
    styurl = json['styurl'] != null ? json['styurl'].cast<String>() : [];
  }

  List<String>? styurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['styurl'] = styurl;
    return map;
  }
}
