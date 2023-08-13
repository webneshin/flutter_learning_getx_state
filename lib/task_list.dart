import 'package:flutter/cupertino.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo Not Implemented
    return SizedBox(
      child: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        itemBuilder: (context, index) => Container(),
      ),
    );
  }
}
