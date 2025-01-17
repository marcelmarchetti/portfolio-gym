import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio_marcel_gym/core/constants/navigation/navigation_routes.dart';
import 'package:portfolio_marcel_gym/core/providers/user_provider.dart';
import 'package:portfolio_marcel_gym/main.dart';
import 'package:provider/provider.dart';

import 'core/constants/navigation/routes.dart';
import 'core/constants/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserNotifier())
      ],
      child: MaterialApp(
        title: 'Portofolio Marcel gym',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('es'),
        ],
        theme: AppThemes.mainTheme,
        initialRoute: Routes.login,
        onGenerateRoute: NavigationRoutes.generateRoute,
      ),
    );
  }
}