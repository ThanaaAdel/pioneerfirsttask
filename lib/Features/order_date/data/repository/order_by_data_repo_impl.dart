import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/core/errors/failure.dart';
import '../../domain/repository/order_date_repo.dart';
import '../datasource/order_date_remote_data_source.dart';
class OrderByDataRepoImpl extends OrderDateRepo {
  final OrderDataReHomeRemoteDataSourseImpl orderDataReHomeRemoteDataSourseImpl;

  OrderByDataRepoImpl(this.orderDataReHomeRemoteDataSourseImpl);
  @override
  Future<
      Either<Failure, List<RepositoryEntity>>> fetchRepositoryByDate() async {
    try {
      var data = await orderDataReHomeRemoteDataSourseImpl
          .fetchRepositoryByDate();
      return right(data);
    }
    catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }


}
