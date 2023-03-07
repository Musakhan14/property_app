// enum Complexity { Simple, Challenging, Hard }

// enum Affordability {
//   Affordable,
//   Pricey,
//   Luxurious,
// }

class PropertiesM {
  final Function? pFunction;
  final String? pImageUrl;
  final String? id;
  final String? title;
  final String? pLocation;
  final String? pPric;

  const PropertiesM({
    this.pFunction,
    required this.pImageUrl,
    required this.id,
    required this.title,
    required this.pLocation,
    required this.pPric,
  });
}
