import 'package:json_annotation/json_annotation.dart';
import 'package:tdd/features/number_trivia/domain/entities/numbar_trivia.dart';

part 'number_trivia_model.g.dart';

@JsonSerializable()
class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({required String text, required num number})
      : super(text: text, number: number.toInt());

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModelFromJson(json);

  Map<String, dynamic> toJson() => _$NumberTriviaModelToJson(this);
}
