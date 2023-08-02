import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/usecase/featch_Repository_by_star_use_case.dart';

part 'order_by_stars_state.dart';

class OrderByStarsCubit extends Cubit<OrderByStarsState> {
  OrderByStarsCubit(this.fetchRepositoryByStarUseCase)
      : super(OrderByStarsInitial());
  final FetchRepositoryByStarUseCase fetchRepositoryByStarUseCase;
  Future<void> fetchRepostoryByStar() async {
    emit(FeaturedRepositoryLoading());
    var result = await fetchRepositoryByStarUseCase.call();
    result.fold((failure) {
      emit(FeaturedRepositoryFailure(failure.message));
    }, (repository) {
      emit(FeaturedRepositorySuccess(repository));
    });
  }
}
