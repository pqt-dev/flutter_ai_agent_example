// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => _CountryDto(
  name: NameDto.fromJson(json['name'] as Map<String, dynamic>),
  flags: FlagsDto.fromJson(json['flags'] as Map<String, dynamic>),
  cca2: json['cca2'] as String,
  capital: (json['capital'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  population: (json['population'] as num).toInt(),
);

Map<String, dynamic> _$CountryDtoToJson(_CountryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'cca2': instance.cca2,
      'capital': instance.capital,
      'population': instance.population,
    };

_NameDto _$NameDtoFromJson(Map<String, dynamic> json) =>
    _NameDto(common: json['common'] as String);

Map<String, dynamic> _$NameDtoToJson(_NameDto instance) => <String, dynamic>{
  'common': instance.common,
};

_FlagsDto _$FlagsDtoFromJson(Map<String, dynamic> json) =>
    _FlagsDto(png: json['png'] as String, svg: json['svg'] as String?);

Map<String, dynamic> _$FlagsDtoToJson(_FlagsDto instance) => <String, dynamic>{
  'png': instance.png,
  'svg': instance.svg,
};
