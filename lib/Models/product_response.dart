class ProductResponse {
  final dynamic id;
  final String? title;
  final dynamic price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  ProductResponse({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      id: json["id"],
      title: json["title"] as String,
      description: json["description"] as String,
      image: json["image"],
      price: json["price"],
      category: json["category"] as String,
      rating: Rating.fromJson(
        json["rating"],
      ),
    );
  }
}

class Rating {
  final dynamic rate;
  final dynamic count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(rate: json['rate'], count: json['count']);
  }
}
