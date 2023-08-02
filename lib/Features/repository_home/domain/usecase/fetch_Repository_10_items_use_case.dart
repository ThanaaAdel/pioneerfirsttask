import 'package:dartz/dartz.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/core/use_cases/use_case.dart';

import '../../../../core/errors/failure.dart';
import '../repository/home_repo.dart';

class FetchRepositoryOnly10ItemsUseCase
    extends UseCase<List<RepositoryEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchRepositoryOnly10ItemsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<RepositoryEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchRepositoryOnly10Repo();
  }
}
