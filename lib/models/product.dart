import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title, createdAt, id;
  final String? category, image, subTitle, description;
  final double? price;

  const Product({
    required this.id,
    required this.title,
    required this.createdAt,
    this.category,
    this.image,
    this.subTitle,
    this.description,
    this.price,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        createdAt,
        category,
        image,
        subTitle,
        description,
        price,
      ];

  Product copyWith({
    String? id,
    String? title,
    String? createdAt,
    String? category,
    String? image,
    String? subTitle,
    String? description,
    double? price,
  }) =>
      Product(
        id: id ?? this.id,
        title: title ?? this.title,
        createdAt: createdAt ?? this.createdAt,
        category: category ?? this.category,
        image: image ?? this.image,
        subTitle: subTitle ?? this.subTitle,
        description: description ?? this.description,
        price: price ?? this.price,
      );

  static Product fromJson(Map<String, dynamic> json) => Product(
        id: json['id'].toString(),
        title: json['title'].toString(),
        createdAt: json['createdAt'].toString(),
        category: json['category'].toString(),
        image: json['image'].toString(),
        subTitle: json['subTitle'].toString(),
        description: json['description'].toString(),
        price: double.parse(json['price'].toString()),
      );
}
