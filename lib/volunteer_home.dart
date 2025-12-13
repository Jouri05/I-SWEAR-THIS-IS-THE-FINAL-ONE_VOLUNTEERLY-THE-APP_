import 'package:flutter/material.dart';

import 'add_task_screen.dart';
import 'task_list_screen.dart';

class VolunteerHome extends StatelessWidget {
  const VolunteerHome({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_MenuItem>[
      _MenuItem('Add Task', (_) => const AddTaskScreen()),
      _MenuItem('Task List', (_) => const TaskListScreen()),
      _MenuItem(
        'Achievements',
        (_) => const _ComingSoonScreen(title: 'Achievements'),
      ),
      _MenuItem(
        'Availability',
        (_) => const _ComingSoonScreen(title: 'Availability'),
      ),
      _MenuItem(
        'Preferences',
        (_) => const _ComingSoonScreen(title: 'Preferences'),
      ),
    ];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: [
              const Text(
                "Volunteer",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 40),
              ...items.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => item.builder(ctx),
                          ),
                        );
                      },
                      child: Text(
                        item.label,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItem {
  final String label;
  final Widget Function(BuildContext) builder;
  _MenuItem(this.label, this.builder);
}

class _ComingSoonScreen extends StatelessWidget {
  final String title;
  const _ComingSoonScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: Text('Coming soon...')),
    );
  }
}
