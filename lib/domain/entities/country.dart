import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({
    required String id,
    required String name,
    required String flagUrl,
    required String summary,
    required int population,
  }) = _Country;
}
