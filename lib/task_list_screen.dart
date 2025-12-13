import 'package:flutter/material.dart';
import 'models/task.dart';
import 'services/task_storage.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  Future<void> _reload() async {
    setState(() => loading = true);
    tasks = await TaskStorage.loadTasks();
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : tasks.isEmpty
          ? const Center(child: Text('No tasks yet.'))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, i) {
                final t = tasks[i];
                return ListTile(
                  title: Text(t.title),
                  subtitle: t.description.isEmpty ? null : Text(t.description),
                );
              },
            ),
    );
  }
}
