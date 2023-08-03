import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/feature_list_view.dart';
import '../controller/order50_items_cubit/only50_items_cubit.dart';
import 'only50_list_view.dart';


class FeatuedRepository50ListViewBlocBuilder extends StatefulWidget {
  const FeatuedRepository50ListViewBlocBuilder({
    super.key,
  });

  @override
  State<FeatuedRepository50ListViewBlocBuilder> createState() =>
      _FeatuedBooksListViewBlocBuilderState();
}

class _FeatuedBooksListViewBlocBuilderState
    extends State<FeatuedRepository50ListViewBlocBuilder> {
  List<RepositoryEntity> repository = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Only50ItemsCubit, Only50ItemsState>(
        builder: (context, state) {
          if (state is FeaturedRepositorySuccess) {
            return Only50ItemsListView(
              repository: state.Repository,
            );
          } else if (state is FeaturedRepositoryFailure) {
            return Text(state.errMessage);
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
