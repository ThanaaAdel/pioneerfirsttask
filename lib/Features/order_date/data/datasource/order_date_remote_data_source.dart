
import 'package:pioneerfirsttask/Features/repository_home/data/model/repository_model/repository_model.dart';
import 'package:pioneerfirsttask/core/utils/api_service.dart';

import '../../../repository_home/domain/entities/repository_entity.dart';


abstract class HomeRemoteDataSourse {

  Future< List<RepositoryEntity>> fetchRepositoryByDate();
}
class OrderDataReHomeRemoteDataSourseImpl extends HomeRemoteDataSourse{
  final ApiService apiService;

  OrderDataReHomeRemoteDataSourseImpl(this.apiService);
  @override
  Future<List<RepositoryEntity>> fetchRepositoryByDate() async{
    //data invalid
    var data = await   apiService.get(endPoint: 'repositories?q=created:>2019-01-10&sort=stars&order=desc');
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
