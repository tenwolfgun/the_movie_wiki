import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/bloc/discover_movie_bloc.dart';
import 'package:the_movie_wiki/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: "The Movie Wiki",
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DiscoverMovieBloc>()
        ..add(
          DiscoverMovieEvent.getMovieData('now_playing', 1),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Test',
          ),
        ),
        body: BlocBuilder<DiscoverMovieBloc, DiscoverMovieState>(
          builder: (_, state) => state.map(
            initial: (_) {
              return Container();
            },
            loading: (_) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (e) {
              return ListView.builder(
                itemCount: e.results.length,
                itemBuilder: (_, i) {
                  return ListTile(
                    title: Text(e.results[i].title),
                  );
                },
              );
            },
            error: (e) {
              return Center(child: Text(e.errorMessage));
            },
          ),
        ),
      ),
    );
  }
}
