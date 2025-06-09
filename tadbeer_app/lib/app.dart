import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'utils/localization.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/teams_screen.dart';
import 'screens/debts_screen.dart';
import 'screens/goals_screen.dart';
import 'screens/admin_screen.dart';
import 'screens/reports_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/support_center_screen.dart';
import 'screens/faq_screen.dart';
import 'screens/ai_assistant_screen.dart';

class TadbeerApp extends StatelessWidget {
  const TadbeerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تدبير | Tadbeer',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Cairo',
      ),
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: AppLocalizations.localeResolutionCallback,
      home: OnboardingScreen(),
      routes: {
        '/login': (_) => LoginScreen(),
        '/home': (_) => HomeScreen(),
        '/teams': (_) => TeamsScreen(),
        '/debts': (_) => DebtsScreen(),
        '/goals': (_) => GoalsScreen(),
        '/admin': (_) => AdminScreen(),
        '/reports': (_) => ReportsScreen(),
        '/settings': (_) => SettingsScreen(),
        '/support': (_) => SupportCenterScreen(),
        '/faq': (_) => FAQScreen(),
        '/ai': (_) => AIAssistantScreen(),
      },
    );
  }
}
