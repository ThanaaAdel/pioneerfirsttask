import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order100_items_state.dart';

class Order100ItemsCubit extends Cubit<Order100ItemsState> {
  Order100ItemsCubit() : super(Order100ItemsInitial());
}
