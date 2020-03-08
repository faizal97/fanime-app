import 'dart:convert';

import 'package:fanime/components/top.dart';
import 'package:http/http.dart';

class JikanAnime {
  static final String baseUrl = 'https://api.jikan.moe';

  static Future<List<Top>> getTopAnimes({int page = 1}) async {
    List<Top> topList = [];

    String endpoint = '/v3/top/anime/${page.toString()}/airing';
    print(endpoint);
    Response response = await get('$baseUrl$endpoint');
    if (response.statusCode == 200) {

      Map data = jsonDecode(response.body);
      List<dynamic> topDatas = data['top'].toList();
      topDatas.forEach((topData) {
        topList.add(Top.fromJson(topData));
      });
    }

    return topList;
  }
}