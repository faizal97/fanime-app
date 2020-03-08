import 'package:flutter/material.dart';

class Top {
  int mal_id;
  int rank;
  String title;
  String url;
  String image_url;
  String type;
  int episodes;
  String start_date;
  int members;
  dynamic score;

  Top({
    this.mal_id,
    this.rank,
    this.title,
    this.url,
    this.image_url,
    this.type,
    this.episodes,
    this.start_date,
    this.members,
    this.score
  });

   factory Top.fromJson(Map<String, dynamic> json) {
    return Top(
      mal_id: json['mal_id'] as int,
      rank: json['rank'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      image_url: json['image_url'] as String,
      type: json['type'] as String,
      episodes: json['episodes'] as int,
      start_date: json['start_date'] as String,
      members: json['members'] as int,
      score: json['score'],
    );
  }

  Card makeCard() {
    return Card(
      child: ListTile(
        onTap: () {},
        title: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Text(
                this.rank.toString(),
              ),
            ),
            Flexible(
              flex: 1,
              child: Image(
                image: NetworkImage(this.image_url),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                this.title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}