class Festival {
  final String image;
  final String category;
  final String Quote;
  final List bgimage;

  Festival({
    required this.Quote,
    required this.image,
    required this.category,
    required this.bgimage,
  });

  factory Festival.fromMap({required Map data}) {
    return Festival(
      Quote: data["Quote"],
      image: data["image"],
      category: data["category"],
      bgimage: data["bgimage"],
    );
  }
}
