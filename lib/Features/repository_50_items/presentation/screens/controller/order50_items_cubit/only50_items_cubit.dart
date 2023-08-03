import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pioneerfirsttask/Features/repository_50_items/domain/usecase/featch_Repository_50_items_use_case.dart';

import '../../../domain/entities/repository_entity.dart';

part 'only50_items_state.dart';

class Only50ItemsCubit extends Cubit<Only50ItemsState> {
  Only50ItemsCubit(this.fetchRepository50ItemsUseCase) : super(Only50ItemsInitial());
  final FetchRepository50ItemsUseCase fetchRepository50ItemsUseCase;
  Future<void> fetchRepostoryByStar() async {
    emit(FeaturedRepositoryLoading());
    var result = await fetchRepository50ItemsUseCase.call();
    result.fold((failure) {
      emit(FeaturedRepositoryFailure(failure.message));
    }, (repository) {
      emit(FeaturedRepositorySuccess(repository));
    });
}}
