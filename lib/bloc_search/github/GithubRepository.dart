
import 'package:firs_project/bloc_search/github/GithubCache.dart';
import 'package:firs_project/bloc_search/github/GithubClient.dart';
import 'package:firs_project/bloc_search/model/SearchResult.dart';

class GithubRepository{
  final GithubCache cache;
  final GithubClient client;

  GithubRepository(this.cache, this.client);

  Future<SearchResult> search(String term) async {
    final cachedResult = cache.get(term);
    if (cachedResult != null) {
      return cachedResult;
    }
    final result = await client.search(term);
    cache.set(term, result);
    return result;
  }

}