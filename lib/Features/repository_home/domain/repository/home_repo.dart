import 'package:dartz/dartz.dart';
import 'package:pioneerfirsttask/core/errors/failure.dart';

import '../entities/repository_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryByStar();
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly10Repo();
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly50Repo();
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly100Repo();

}
