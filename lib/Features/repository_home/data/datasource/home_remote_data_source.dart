
import 'package:pioneerfirsttask/Features/repository_home/data/model/repository_model/repository_model.dart';
import 'package:pioneerfirsttask/core/utils/api_service.dart';

import '../../domain/entities/repository_entity.dart';

abstract class HomeRemoteDataSourse {
  Future< List<RepositoryEntity> >fetchRepositoryByStar();
  Future<List<RepositoryEntity>> fetchRepositoryOnly10Repo();
  Future< List<RepositoryEntity>> fetchRepositoryOnly50Repo();
  Future< List<RepositoryEntity>> fetchRepositoryOnly100Repo();

}
class HomeReHomeRemoteDataSourseImpl extends HomeRemoteDataSourse{
  final ApiService apiService;

  HomeReHomeRemoteDataSourseImpl(this.apiService);
  @override



  @override
  Future<List<RepositoryEntity>> fetchRepositoryByStar() async{
    var data = await apiService.get(endPoint: 'repositories?q=created:>2019-01-10&sort=stars&order=desc');
List<RepositoryEntity> Repository =getRepositoryList(data);
return Repository;
  }

  @override
  Future<List<RepositoryEntity>> fetchRepositoryOnly100Repo() async{
    var data = await apiService.get(endPoint: 'repositories?q=created:>2019-01-10&sort=stars&order=desc&per_page=100');
List<RepositoryEntity> Repository =getRepositoryList(data);
return Repository;
  }

  @override
  Future<List<RepositoryEntity>> fetchRepositoryOnly10Repo() async{
    var data = await apiService.get(endPoint: 'repositories?q=created:>2019-01-10&sort=stars&order=desc&per_page=10');
  List<RepositoryEntity> Repository =getRepositoryList(data);
  return Repository;
  }

  @override
  Future<List<RepositoryEntity>> fetchRepositoryOnly50Repo() async {
    var data = await apiService.get(endPoint: 'repositories?q=created:>2019-01-10&sort=stars&order=desc&per_page=50');
  List<RepositoryEntity> Repository =getRepositoryList(data);
  return Repository;
  }
List<RepositoryEntity> getRepositoryList(Map<String, dynamic> data) {
  List<RepositoryEntity> books = [];
  for (var bookMap in data['items']) {
    books.add(RepositoryModel.fromJson(bookMap));
  }
  return books;
}
}
