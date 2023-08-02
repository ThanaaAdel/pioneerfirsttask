import 'package:dartz/dartz.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/core/use_cases/use_case.dart';
import '../../../../core/errors/failure.dart';
import '../repository/order_date_repo.dart';

class FetchRepositoryBydateUseCase
    extends UseCase<List<RepositoryEntity>, NoParam> {
  final OrderDateRepo orderDateRepo;

  FetchRepositoryBydateUseCase(this.orderDateRepo);

  @override
  Future<Either<Failure, List<RepositoryEntity>>> call([NoParam? param]) async {
    return await orderDateRepo.fetchRepositoryByDate();
  }
}
