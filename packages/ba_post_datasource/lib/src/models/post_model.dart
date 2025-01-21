import 'dart:convert';

List<PostModel> postModelListFromJson(String str) =>
    (json.decode(str) as List<dynamic>)
        .map((item) => PostModel.fromJson(item as Map<String, dynamic>))
        .toList();

String postModelListToJson(List<PostModel> data) =>
    json.encode(data.map((post) => post.toJson()).toList());

class PostModel {
  const PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );

  final int userId;
  final int id;
  final String title;
  final String body;

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };
}
