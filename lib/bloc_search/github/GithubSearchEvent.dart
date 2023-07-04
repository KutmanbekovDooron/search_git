import 'package:equatable/equatable.dart';

abstract class GithubSearchEvent extends Equatable{

  GithubSearchEvent();
}
class TextChanged extends GithubSearchEvent {
  TextChanged({required this.text});

  final String text;

  @override
  List<Object> get props => [text];

  @override
  String toString() => 'TextChanged { text: $text }';
}


