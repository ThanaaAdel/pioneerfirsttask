
import '../../../domain/entities/repository_entity.dart';

abstract class Order100ItemsState {}
class Order100ItemsInitial extends Order100ItemsState {}
class FeaturedRepositoryFailure extends Order100ItemsState {
  final String errMessage;

  FeaturedRepositoryFailure(this.errMessage);
}
class FeaturedRepositorySuccess extends Order100ItemsState {
  final List<RepositoryEntity> Repository;

  FeaturedRepositorySuccess(this.Repository);
}
class FeaturedRepositoryLoading extends Order100ItemsState {}