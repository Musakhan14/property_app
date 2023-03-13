// enum Complexity { Simple, Challenging, Hard }

// enum Affordability {
//   Affordable,
//   Pricey,
//   Luxurious,
// }

class PropertiesM {
  final bool? isFavorite;
  final int? baths;
  final int? beds;

  final String? id;
  final String? title;
  final List<String>? categories;
  final int prizeCategory;
  final String? pImageUrl;
  final String? pLocation;
  final String? pPric;

  PropertiesM({
    this.isFavorite,
    required this.baths,
    required this.beds,
    this.categories,
    required this.prizeCategory,
    required this.pImageUrl,
    required this.id,
    required this.title,
    required this.pLocation,
    required this.pPric,
  });
}
