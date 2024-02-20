class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String imageUrl;
  // final RatingModel rating;

  ProductModel({
    // required this.rating,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      // rating: RatingModel.fromJson(
      //   jsonData["rating"],
      // ),
      // That how you access another small model into bigger one...
      id: jsonData["id"],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      imageUrl: jsonData['image'],
    );
  }
}

// class RatingModel {
//   // The small model from ProductsModel .
//   final num rate;
//   final num count;

//   RatingModel({required this.rate, required this.count});
//   factory RatingModel.fromJson(jsonData) {
//     return RatingModel(
//       rate: jsonData['rate'],
//       count: jsonData['count'],
//     );
//   }
// }
