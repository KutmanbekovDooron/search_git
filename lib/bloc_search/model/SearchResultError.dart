
class SearchResultError {

  final String message;

  const SearchResultError({required this.message});

  static SearchResultError fromJson(Map<String, dynamic > json){
    return SearchResultError(
        message : json["message"] as String,
    );
  }

}