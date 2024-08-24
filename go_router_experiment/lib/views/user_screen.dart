import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The user screen
class UserScreen extends StatelessWidget {
  final String id;

  /// Constructs a [UserScreen]
  const UserScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text('User ID = $id'),
        ),
      ),
    );
  }
}
