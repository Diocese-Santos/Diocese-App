final class Church {
  final String id;
  final String name;
  final String city;
  final String image;
  final List<String>? favoriteUsers;

  const Church({
    required this.id,
    required this.name,
    required this.city,
    required this.image,
    required this.favoriteUsers,
  });
}

final class DetailedChurh extends Church {
  const DetailedChurh({
    required super.id,
    required super.name,
    required super.city,
    required super.image,
    required super.favoriteUsers,
  });
}
