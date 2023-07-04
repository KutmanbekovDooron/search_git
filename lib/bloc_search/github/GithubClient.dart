import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/SearchResult.dart';
import '../model/SearchResultError.dart';

class GithubClient{
  final String baseUrl;
  final http.Client httpClient;

  GithubClient({this.baseUrl = "https://api.github.com/search/users?q=", http.Client? httpClient}) : this.httpClient = httpClient?? http.Client();


  Future<SearchResult> search(String term) async{
    final response = await httpClient.get(Uri.parse("$baseUrl$term"));
    final results = json.decode(response.body);

    if(response.statusCode == 200){
      return SearchResult.fromJson(results);
    }else{
      throw SearchResultError.fromJson(results);
    }
  }

}




