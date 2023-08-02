part of 'order_by_stars_cubit.dart';

@immutable
abstract class OrderByStarsState {


}

class OrderByStarsInitial extends OrderByStarsState {}
class FeaturedRepositoryFailure extends OrderByStarsState {
  final String errMessage;

  FeaturedRepositoryFailure(this.errMessage);
}
class FeaturedRepositorySuccess extends OrderByStarsState {
  final List<RepositoryEntity> Repository;

  FeaturedRepositorySuccess(this.Repository);
}
class FeaturedRepositoryLoading extends OrderByStarsState {}