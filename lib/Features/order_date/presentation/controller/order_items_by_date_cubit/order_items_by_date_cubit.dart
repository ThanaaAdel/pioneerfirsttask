import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order_items_by_date_state.dart';

class OrderItemsByDateCubit extends Cubit<OrderItemsByDateState> {
  OrderItemsByDateCubit() : super(OrderItemsByDateInitial());
}
