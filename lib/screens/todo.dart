import 'package:flutter/material.dart';
import 'package:todo/Utils/colors.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.arrow_back_ios_new),
            backgroundColor: AppColors.blue,
            title: const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.white,
                  child: Icon(Icons.check),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "My To Do List",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
              ],
            )),
        body: ListView.separated(
            itemBuilder: (context, index) => const TaskWidget(),
            separatorBuilder: (context, index) => const SizedBox.shrink(),
            itemCount: 5),
        floatingActionButton: const CustomFloatingButton());
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      title: Text("Task Title",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white)),
      subtitle: Text("Time: 12:00 PM", style: TextStyle(color: AppColors.grey)),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: ((context) => const TaskDialog(
                  key: null,
                )));
      },
      child: const Icon(
        Icons.add,
        size: 40,
      ),
    );
  }
}

class TaskDialog extends StatelessWidget {
  const TaskDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Dialog(
      backgroundColor: AppColors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: SizedBox(
        height: screenHeight * 0.6,
        width: screenWidth * 0.8,
      ),
    );
  }
}
