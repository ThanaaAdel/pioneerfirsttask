import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'only50_items_state.dart';

class Only50ItemsCubit extends Cubit<Only50ItemsState> {
  Only50ItemsCubit() : super(Only50ItemsInitial());
}
