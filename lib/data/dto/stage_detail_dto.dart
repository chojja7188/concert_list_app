class StageDetailDto {
  StageDetailDto({
    this.fcltynm,
    this.mt10id,
    this.mt13cnt,
    this.fcltychartr,
    this.opende,
    this.seatscale,
    this.telno,
    this.relateurl,
    this.adres,
    this.la,
    this.lo,
  });

  StageDetailDto.fromJson(dynamic json) {
    fcltynm = json['fcltynm'];
    mt10id = json['mt10id'];
    mt13cnt = json['mt13cnt'];
    fcltychartr = json['fcltychartr'];
    opende = json['opende'];
    seatscale = json['seatscale'];
    telno = json['telno'];
    relateurl = json['relateurl'];
    adres = json['adres'];
    la = json['la'];
    lo = json['lo'];
  }

  String? fcltynm;
  String? mt10id;
  String? mt13cnt;
  String? fcltychartr;
  String? opende;
  String? seatscale;
  String? telno;
  String? relateurl;
  String? adres;
  String? la;
  String? lo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fcltynm'] = fcltynm;
    map['mt10id'] = mt10id;
    map['mt13cnt'] = mt13cnt;
    map['fcltychartr'] = fcltychartr;
    map['opende'] = opende;
    map['seatscale'] = seatscale;
    map['telno'] = telno;
    map['relateurl'] = relateurl;
    map['adres'] = adres;
    map['la'] = la;
    map['lo'] = lo;
    return map;
  }
}
