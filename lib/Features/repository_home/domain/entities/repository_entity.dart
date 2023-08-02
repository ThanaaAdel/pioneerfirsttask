class RepositoryEntity {
  final String nameRepository;
  final num? idOwner;
  final String avatarImage;
  final String descriptionFromRepo;
  final String langouge;
  final String urlGithupOwner;

  RepositoryEntity(
      {
        required this.nameRepository,
        required this.idOwner,
        required this.avatarImage,
        required this.langouge,
        required this.urlGithupOwner,
        required this.descriptionFromRepo});
}
