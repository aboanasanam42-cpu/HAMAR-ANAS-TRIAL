
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:myapp/services/auth_service.dart';
import 'package:myapp/screens/dashboard_screen.dart';
import 'package:myapp/screens/settings_screen.dart';
import 'package:myapp/theme/app_theme.dart';
import 'firebase_options.dart';

// A placeholder for a future theme provider if we need dark/light mode toggle
class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  ThemeMode get themeMode => _themeMode;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    final router = GoRouter(
      refreshListenable: authService,
      initialLocation: '/dashboard',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'MALEK MEXC',
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
