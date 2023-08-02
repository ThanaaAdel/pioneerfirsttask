import 'package:dartz/dartz.dart';
import 'package:pioneerfirsttask/core/errors/failure.dart';
import '../../../repository_home/domain/entities/repository_entity.dart';
abstract class OrderDateRepo {
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryByDate();
}
