
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('API Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Connect to MEXC',
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Your API keys are stored securely on this device and are never shared.',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            const TextField(
              decoration: InputDecoration(
                hintText: 'API Key',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Secret Key',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // TODO: Save and verify API keys
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('API Keys Saved (Placeholder)'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text('Save & Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
