final class Church {
  final String name;
  final String city;
  final String image;

  const Church({required this.name, required this.city, required this.image});
}

final class DetailedChurh extends Church {
  const DetailedChurh({
    required super.name,
    required super.city,
    required super.image,
  });
}
