// To parse this JSON data, do
//
//     final productsModel = productsModelFromMap(jsonString);

// To parse this JSON data, do
//
//     final productsModel = productsModelFromMap(jsonString);


import 'dart:convert';

class ProductsModel {
    ProductsModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.image,
        required this.rating,
    });

    int id;
    String title;
    double price;
    String description;
    String image;
    Rating rating;

    factory ProductsModel.fromJson(String str) => ProductsModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProductsModel.fromMap(Map<String, dynamic> json) => ProductsModel(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        image: json["image"],
        rating: Rating.fromMap(json["rating"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "rating": rating.toMap(),
    };
}


class Rating {
    Rating({
        required this.rate,
        required this.count,
    });

    double rate;
    int count;

    factory Rating.fromJson(String str) => Rating.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Rating.fromMap(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toMap() => {
        "rate": rate,
        "count": count,
    };
}
