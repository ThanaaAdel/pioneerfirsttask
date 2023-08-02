import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'only10_items_state.dart';

class Only10ItemsCubit extends Cubit<Only10ItemsState> {
  Only10ItemsCubit() : super(Only10ItemsInitial());
}
