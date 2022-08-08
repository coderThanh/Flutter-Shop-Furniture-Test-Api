import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id, title;
  final String? image, createdAt;
  final int numOfProducts;

  const Category({
    required this.id,
    required this.title,
    required this.numOfProducts,
    this.image,
    this.createdAt,
  });

  @override
  List<Object?> get props => [id, title, image, numOfProducts, createdAt];

  Category copyWidth({
    String? id,
    String? title,
    String? image,
    String? createdAt,
    int? numOfProducts,
  }) {
    return Category(
      id: id ?? this.id,
      title: title ?? this.title,
      numOfProducts: numOfProducts ?? this.numOfProducts,
      image: image,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  // It creates an Category from JSON
  static Category fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'].toString(),
      title: json['title'].toString(),
      numOfProducts: json['numOfProducts'] as int,
      image: json['image'].toString(),
      createdAt: json['createdAt'].toString(),
    );
  }
}
