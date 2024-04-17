class ConcertDto {
  ConcertDto({
    this.mt20id,
    this.prfnm,
    this.prfpdfrom,
    this.prfpdto,
    this.fcltynm,
    this.poster,
    this.genrenm,
    this.openrun,
    this.prfstate,
  });

  ConcertDto.fromJson(dynamic json) {
    mt20id = json['mt20id'];
    prfnm = json['prfnm'];
    prfpdfrom = json['prfpdfrom'];
    prfpdto = json['prfpdto'];
    fcltynm = json['fcltynm'];
    poster = json['poster'];
    genrenm = json['genrenm'];
    openrun = json['openrun'];
    prfstate = json['prfstate'];
  }

  String? mt20id;
  String? prfnm;
  String? prfpdfrom;
  String? prfpdto;
  String? fcltynm;
  String? poster;
  String? genrenm;
  String? openrun;
  String? prfstate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mt20id'] = mt20id;
    map['prfnm'] = prfnm;
    map['prfpdfrom'] = prfpdfrom;
    map['prfpdto'] = prfpdto;
    map['fcltynm'] = fcltynm;
    map['poster'] = poster;
    map['genrenm'] = genrenm;
    map['openrun'] = openrun;
    map['prfstate'] = prfstate;
    return map;
  }
}
