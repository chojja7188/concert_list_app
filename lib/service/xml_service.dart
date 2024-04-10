import 'dart:convert';

import 'package:http/http.dart';
import 'package:xml2json/xml2json.dart';

class XmlService {
  final _myTransformer = Xml2Json();

  String xmlToJson(Response response) {
    _myTransformer.parse(utf8.decode(response.bodyBytes));
    final result = _myTransformer.toParker();

    return result;
  }
}