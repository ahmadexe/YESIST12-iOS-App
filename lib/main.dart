import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:yesist_ios_app/base_wrapper.dart';
import 'package:yesist_ios_app/blocs/home/bloc/home_bloc.dart';
import 'package:yesist_ios_app/blocs/notifications/bloc/notifications_bloc.dart';
import 'package:yesist_ios_app/blocs/places/bloc/places_bloc.dart';
import 'package:yesist_ios_app/blocs/timeline/bloc/timeline_bloc.dart';
import 'package:yesist_ios_app/blocs/tracks/bloc/tracks_bloc.dart';
import 'package:yesist_ios_app/firebase_options.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';
import 'package:yesist_ios_app/screens/splash.dart';
import 'configs/core_theme.dart' as theme;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        BlocProvider(create: (_) => HomeBloc()),
        BlocProvider(create: (_) => TimelineBloc()),
        BlocProvider(create: (_) => NotificationsBloc()),
        BlocProvider(create: (_) => PlacesBloc()),
        BlocProvider(create: (_) => TracksBloc()),
      ],
      child: BaseWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "YESIST12",
          theme: theme.themeLight,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
