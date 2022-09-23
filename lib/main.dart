import 'package:easy_codebase/presentations/bloc_observer/bloc_observer.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/routes.dart';
import 'repositories/hotel_repository_impl.dart';

void main() {
  final FluroRouter router = FluroRouter();
  EasyRouter.router = router;
  EasyRouter.defineRouter();
  Bloc.observer = EasyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => HotelRepositoryImpl())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue),
          onGenerateRoute: EasyRouter.router.generator),
    );
  }
}

class SettingDarkMode extends ValueNotifier<bool> {
  SettingDarkMode(super.value);

  factory SettingDarkMode.create(BuildContext context) =>
      SettingDarkMode(false);

  void changeTheme(bool isDark) {
    value = isDark;
  }
}
