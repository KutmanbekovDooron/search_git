import 'SearchResultItem.dart';

class SearchResult {
  final List<SearchResultItem> items;

  SearchResult(this.items);

  static SearchResult fromJson(Map<String , dynamic > json){
    final items = (json["items"] as List<dynamic>)
        .map((item) => SearchResultItem.fromJson(item as Map<String,dynamic>)).toList();
    return SearchResult(items);
  }

}