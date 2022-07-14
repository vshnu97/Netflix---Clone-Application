import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentation/main_page/widgets/screen_main_page.dart';

import 'application/hot_and_new/hot_and_new_bloc.dart';
import 'application/search/search_bloc.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
         BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
        BlocProvider(create: (context) => getIt<HotAndNewBloc>())
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
            scaffoldBackgroundColor: backgroundColor,
            backgroundColor: backgroundColor,
            fontFamily: GoogleFonts.dmSans().fontFamily,
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
            )),
        debugShowCheckedModeBanner: false,
        home: ScreenMain(),
      ),
    );
  }
}
