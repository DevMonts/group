import 'package:flutter/material.dart';
import 'common/constants/app_theme.dart';
import 'common/constants/router/app_router.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group Systen',
      theme: AppTheme.lightTheme,
      initialRoute: "/",
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
