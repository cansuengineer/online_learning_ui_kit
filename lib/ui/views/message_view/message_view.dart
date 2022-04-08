import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/message_view/message_viewmodel.dart';
import 'package:provider/provider.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessageViewModel(),
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
    return Container(
        child: const Center(
      child: Text("Message"),
    ));
  }
}
