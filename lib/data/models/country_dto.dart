import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/country.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
abstract class CountryDto with _$CountryDto {
  const factory CountryDto({
    required NameDto name,
    required FlagsDto flags,
    required String cca2,
    List<String>? capital,
    required int population,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);
}

extension CountryDtoMapper on CountryDto {
  Country toDomain() {
    return Country(
      id: cca2,
      name: name.common,
      flagUrl: flags.png,
      summary: capital != null && capital!.isNotEmpty ? capital!.first : 'Unknown Capital',
      population: population,
    );
  }
}

@freezed
abstract class NameDto with _$NameDto {
  const factory NameDto({
    required String common,
  }) = _NameDto;

  factory NameDto.fromJson(Map<String, dynamic> json) => _$NameDtoFromJson(json);
}

@freezed
abstract class FlagsDto with _$FlagsDto {
  const factory FlagsDto({
    required String png,
    String? svg,
  }) = _FlagsDto;

  factory FlagsDto.fromJson(Map<String, dynamic> json) => _$FlagsDtoFromJson(json);
}
