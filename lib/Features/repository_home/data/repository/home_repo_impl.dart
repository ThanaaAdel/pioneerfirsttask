import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/core/errors/failure.dart';
import '../../domain/repository/home_repo.dart';
import '../datasource/home_remote_data_source.dart';
class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourse homeRemoteDataSource;

  HomeRepoImpl(this.homeRemoteDataSource);





  @override
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryByStar() async{
try{

  var data = await homeRemoteDataSource.fetchRepositoryByStar();
  return right(data);
}
catch (e) {
  if (e is DioError) {
    return left(ServerFailure.fromDiorError(e));
  }
  return left(ServerFailure(e.toString()));
}

  }

  @override
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly100Repo() async{
    try{

      var data = await homeRemoteDataSource.fetchRepositoryOnly100Repo();
      return right(data);
    }
    catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly10Repo() async{
    try{

      var data = await homeRemoteDataSource.fetchRepositoryOnly10Repo();
      return right(data);
    }
    catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RepositoryEntity>>> fetchRepositoryOnly50Repo() async {
    try{

      var data = await homeRemoteDataSource.fetchRepositoryOnly50Repo();
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