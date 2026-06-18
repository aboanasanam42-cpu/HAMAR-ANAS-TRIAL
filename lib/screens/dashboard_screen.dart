
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.go('/settings'),
            tooltip: 'Settings',
          ),
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            onPressed: () {
              // TODO: Implement Logout
              context.go('/');
            },
            tooltip: 'Logout',
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          // This is where the main dashboard content will go.
          // We will build this out in the next phase.
          _BotControlCard(),
          _FinancialSummaryCard(title: 'Futures Trading', data: {
            'Active Positions': '3',
            'Total Profit/Loss': '+\$1,250.75',
            'Weekly Realized P/L': '+\$850.20',
          }),
          _FinancialSummaryCard(title: 'Spot Trading', data: {
            'Total Holdings': '\$15,820.00',
            '24h Change': '+\$320.50 (+2.1%)',
          }),
        ],
      ),
    );
  }
}

class _BotControlCard extends StatelessWidget {
  const _BotControlCard();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bot Status', style: textTheme.titleLarge),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.circle, color: Colors.green, size: 16),
                    SizedBox(width: 8),
                    Text('Actively Trading', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Switch(
                  value: true,
                  onChanged: (val) {
                    // TODO: Toggle bot status
                  },
                  activeColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FinancialSummaryCard extends StatelessWidget {
  final String title;
  final Map<String, String> data;

  const _FinancialSummaryCard({required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.titleLarge),
            const SizedBox(height: 12),
            ...data.entries.map((entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(entry.key, style: textTheme.bodyMedium),
                      Text(entry.value, style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
