part of 'only50_items_cubit.dart';

@immutable
abstract class Only50ItemsState {}

class Only50ItemsInitial extends Only50ItemsState {}
class FeaturedRepositoryFailure extends Only50ItemsState {
  final String errMessage;

  FeaturedRepositoryFailure(this.errMessage);
}
class FeaturedRepositorySuccess extends Only50ItemsState {
  final List<RepositoryEntity> Repository;

  FeaturedRepositorySuccess(this.Repository);
}
class FeaturedRepositoryLoading extends Only50ItemsState {}