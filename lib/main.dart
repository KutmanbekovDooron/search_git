import 'package:firs_project/bloc_search/github/GithubCache.dart';
import 'package:firs_project/bloc_search/github/GithubClient.dart';
import 'package:firs_project/bloc_search/github/GithubRepository.dart';
import 'package:firs_project/bloc_search/github/GithubSearchBloc.dart';
import 'package:firs_project/bloc_search/search_github_widget/SearchForm.dart';
import 'package:firs_project/counter_bloc/counter.dart';
import 'package:firs_project/vebview/VebViewWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_color/color_bloc.dart';

void main() {
  // final GithubRepository githubRepository = GithubRepository(GithubCache(), GithubClient());
  runApp(App());
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WebViewWidget());
  }
}


class MyApp extends StatelessWidget {
  final GithubRepository githubRepository;


  MyApp(this.githubRepository); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Github Search",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Github Search"),
          ),
          body: BlocProvider(
            create: (_) => GithubSearchBloc(githubRepository: githubRepository),
            child: SearchForm(),
          ),
        )
    );
  }
}

class ColorSelected extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ststeColor = context.watch<ColorBloc>();
    return Scaffold(
        backgroundColor: ststeColor.state,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.red);
            }, child: Text("red")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.green);
            }, child: Text("green")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.purple);
            }, child: Text("purple")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.black);
            }, child: Text("black")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.white);
            }, child: Text("white")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.pink);
            }, child: Text("pink")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.blue);
            }, child: Text("blue")),
            ElevatedButton(onPressed: () {
              ststeColor.selectedColor(EventColor.orange);
            }, child: Text("orange")),
          ],
        )
    );
  }
}


class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<CounterCubit, String>(
          builder: (context, count) => Center(child: Text(count),),
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment(),
            ),
            const SizedBox(height: 4),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement(),
            ),
          ],
        )
    );
  }
}

