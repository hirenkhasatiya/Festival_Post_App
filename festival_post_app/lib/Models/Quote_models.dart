class Quote {
  final String quote;
  final String category;
  final String image;

  Quote({
    required this.image,
    required this.quote,
    required this.category,
  });

  factory Quote.fromMap({required Map data}) {
    return Quote(
      quote: data["quote"],
      category: data["category"],
      image: data["image"],
    );
  }
}

// class festival {
//   final String image;
//
//   festival({
//     required this.image,
//   });
//
//   factory festival.fromMap({required Map data}) {
//     return festival(
//       image: data["image"],
//     );
//   }
// }
