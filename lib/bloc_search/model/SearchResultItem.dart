import 'package:firs_project/bloc_search/github/GithubUser.dart';

class SearchResultItem{
  final String login;
  final String htmlUrl;
  final String avatarUrl;

  SearchResultItem({required this.login, required this.htmlUrl,required this.avatarUrl});

  static SearchResultItem fromJson(Map<String , dynamic> json){
    return SearchResultItem(
        login: json["login"] as String,
        htmlUrl: json["html_url"] as String,
        avatarUrl: json["avatar_url"] as String);



  }


}