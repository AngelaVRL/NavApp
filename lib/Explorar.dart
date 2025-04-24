import 'package:flutter/material.dart';

class ExplorePageContent extends StatelessWidget {
  const ExplorePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.deepPurple.shade100.withOpacity(0.1),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: const Icon(Icons.explore),
            title: Text('Elemento ${index + 1}'),
            subtitle: const Text('Descripción del contenido'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 14),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Haz clic en el elemento ${index + 1}')),
              );
            },
          ),
        );
      },
    );
  }
}
