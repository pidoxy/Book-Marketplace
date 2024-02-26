class BookModel {
  final String name, imagePath, pageCount;

  BookModel(
      {required this.imagePath, required this.name, required this.pageCount});

  factory BookModel.fromJson({required Map<String, dynamic> json}) => BookModel(
      imagePath: json["image"],
      name: json["name"],
      pageCount: json["page_read"]);
}
