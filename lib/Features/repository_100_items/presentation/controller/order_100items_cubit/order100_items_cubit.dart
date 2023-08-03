import 'package:bloc/bloc.dart';
import 'package:pioneerfirsttask/Features/repository_100_items/domain/usecase/featch_Repository_100_items_use_case.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/manager/order_100items_cubit/order100_items_state.dart';
class Order100ItemsCubit extends Cubit<Order100ItemsState> {
  Order100ItemsCubit(this.fetchRepository100ItemsUseCase) : super(Order100ItemsInitial());
  final FetchRepository100ItemsUseCase fetchRepository100ItemsUseCase;


    Future<void> fetchRepostory100Items() async {
      emit(FeaturedRepositoryLoading());
      var result = await fetchRepository100ItemsUseCase.call();
      result.fold((failure) {
        emit(FeaturedRepositoryFailure(failure.message));
      }, (repository) {
        emit(FeaturedRepositorySuccess(repository));
      });
  }
}
