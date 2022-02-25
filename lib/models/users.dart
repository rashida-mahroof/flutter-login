// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

//String usersToJson(Users data) => json.encode(data.toJson());

class Users {
    Users({
        this.data,
    });

    List<User>? data;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
    );

    // Map<String, dynamic> toJson() => {
    //     "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    // };
}

class User {
    User({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    int? userId;
    int? id;
    String? title;
    String? body;

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    // Map<String, dynamic> toJson() => {
    //     "userId": userId,
    //     "id": id,
    //     "title": title,
    //     "body": body,
    // };
}
