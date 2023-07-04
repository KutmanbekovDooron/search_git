import 'package:firs_project/bloc_search/model/SearchResult.dart';

class GithubCache{
  final _cavhe = <String, SearchResult>{};

  SearchResult? get (String term) => _cavhe[term];

  void set (String term, SearchResult result) => _cavhe[term] = result;

  bool contains(String term) => _cavhe.containsKey(term);

  void remove(String term) => _cavhe.remove(term);

}