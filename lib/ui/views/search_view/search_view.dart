import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/search_view/search_viewmodel.dart';
import 'package:provider/provider.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SearchViewModel(),
      builder: (context, _) {
        return const _ViewContext();
      },
    );
  }
}

class _ViewContext extends StatelessWidget {
  const _ViewContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
