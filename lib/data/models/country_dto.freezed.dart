// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryDto {

 NameDto get name; FlagsDto get flags; String get cca2; List<String>? get capital; int get population;
/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryDtoCopyWith<CountryDto> get copyWith => _$CountryDtoCopyWithImpl<CountryDto>(this as CountryDto, _$identity);

  /// Serializes this CountryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDto&&(identical(other.name, name) || other.name == name)&&(identical(other.flags, flags) || other.flags == flags)&&(identical(other.cca2, cca2) || other.cca2 == cca2)&&const DeepCollectionEquality().equals(other.capital, capital)&&(identical(other.population, population) || other.population == population));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flags,cca2,const DeepCollectionEquality().hash(capital),population);

@override
String toString() {
  return 'CountryDto(name: $name, flags: $flags, cca2: $cca2, capital: $capital, population: $population)';
}


}

/// @nodoc
abstract mixin class $CountryDtoCopyWith<$Res>  {
  factory $CountryDtoCopyWith(CountryDto value, $Res Function(CountryDto) _then) = _$CountryDtoCopyWithImpl;
@useResult
$Res call({
 NameDto name, FlagsDto flags, String cca2, List<String>? capital, int population
});


$NameDtoCopyWith<$Res> get name;$FlagsDtoCopyWith<$Res> get flags;

}
/// @nodoc
class _$CountryDtoCopyWithImpl<$Res>
    implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._self, this._then);

  final CountryDto _self;
  final $Res Function(CountryDto) _then;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? flags = null,Object? cca2 = null,Object? capital = freezed,Object? population = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NameDto,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as FlagsDto,cca2: null == cca2 ? _self.cca2 : cca2 // ignore: cast_nullable_to_non_nullable
as String,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameDtoCopyWith<$Res> get name {
  
  return $NameDtoCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsDtoCopyWith<$Res> get flags {
  
  return $FlagsDtoCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountryDto].
extension CountryDtoPatterns on CountryDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryDto value)  $default,){
final _that = this;
switch (_that) {
case _CountryDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NameDto name,  FlagsDto flags,  String cca2,  List<String>? capital,  int population)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that.name,_that.flags,_that.cca2,_that.capital,_that.population);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NameDto name,  FlagsDto flags,  String cca2,  List<String>? capital,  int population)  $default,) {final _that = this;
switch (_that) {
case _CountryDto():
return $default(_that.name,_that.flags,_that.cca2,_that.capital,_that.population);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NameDto name,  FlagsDto flags,  String cca2,  List<String>? capital,  int population)?  $default,) {final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that.name,_that.flags,_that.cca2,_that.capital,_that.population);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryDto implements CountryDto {
  const _CountryDto({required this.name, required this.flags, required this.cca2, final  List<String>? capital, required this.population}): _capital = capital;
  factory _CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);

@override final  NameDto name;
@override final  FlagsDto flags;
@override final  String cca2;
 final  List<String>? _capital;
@override List<String>? get capital {
  final value = _capital;
  if (value == null) return null;
  if (_capital is EqualUnmodifiableListView) return _capital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int population;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryDtoCopyWith<_CountryDto> get copyWith => __$CountryDtoCopyWithImpl<_CountryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryDto&&(identical(other.name, name) || other.name == name)&&(identical(other.flags, flags) || other.flags == flags)&&(identical(other.cca2, cca2) || other.cca2 == cca2)&&const DeepCollectionEquality().equals(other._capital, _capital)&&(identical(other.population, population) || other.population == population));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flags,cca2,const DeepCollectionEquality().hash(_capital),population);

@override
String toString() {
  return 'CountryDto(name: $name, flags: $flags, cca2: $cca2, capital: $capital, population: $population)';
}


}

/// @nodoc
abstract mixin class _$CountryDtoCopyWith<$Res> implements $CountryDtoCopyWith<$Res> {
  factory _$CountryDtoCopyWith(_CountryDto value, $Res Function(_CountryDto) _then) = __$CountryDtoCopyWithImpl;
@override @useResult
$Res call({
 NameDto name, FlagsDto flags, String cca2, List<String>? capital, int population
});


@override $NameDtoCopyWith<$Res> get name;@override $FlagsDtoCopyWith<$Res> get flags;

}
/// @nodoc
class __$CountryDtoCopyWithImpl<$Res>
    implements _$CountryDtoCopyWith<$Res> {
  __$CountryDtoCopyWithImpl(this._self, this._then);

  final _CountryDto _self;
  final $Res Function(_CountryDto) _then;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? flags = null,Object? cca2 = null,Object? capital = freezed,Object? population = null,}) {
  return _then(_CountryDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NameDto,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as FlagsDto,cca2: null == cca2 ? _self.cca2 : cca2 // ignore: cast_nullable_to_non_nullable
as String,capital: freezed == capital ? _self._capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameDtoCopyWith<$Res> get name {
  
  return $NameDtoCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsDtoCopyWith<$Res> get flags {
  
  return $FlagsDtoCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}


/// @nodoc
mixin _$NameDto {

 String get common;
/// Create a copy of NameDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameDtoCopyWith<NameDto> get copyWith => _$NameDtoCopyWithImpl<NameDto>(this as NameDto, _$identity);

  /// Serializes this NameDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameDto&&(identical(other.common, common) || other.common == common));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common);

@override
String toString() {
  return 'NameDto(common: $common)';
}


}

/// @nodoc
abstract mixin class $NameDtoCopyWith<$Res>  {
  factory $NameDtoCopyWith(NameDto value, $Res Function(NameDto) _then) = _$NameDtoCopyWithImpl;
@useResult
$Res call({
 String common
});




}
/// @nodoc
class _$NameDtoCopyWithImpl<$Res>
    implements $NameDtoCopyWith<$Res> {
  _$NameDtoCopyWithImpl(this._self, this._then);

  final NameDto _self;
  final $Res Function(NameDto) _then;

/// Create a copy of NameDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? common = null,}) {
  return _then(_self.copyWith(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NameDto].
extension NameDtoPatterns on NameDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameDto value)  $default,){
final _that = this;
switch (_that) {
case _NameDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameDto value)?  $default,){
final _that = this;
switch (_that) {
case _NameDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String common)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameDto() when $default != null:
return $default(_that.common);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String common)  $default,) {final _that = this;
switch (_that) {
case _NameDto():
return $default(_that.common);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String common)?  $default,) {final _that = this;
switch (_that) {
case _NameDto() when $default != null:
return $default(_that.common);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameDto implements NameDto {
  const _NameDto({required this.common});
  factory _NameDto.fromJson(Map<String, dynamic> json) => _$NameDtoFromJson(json);

@override final  String common;

/// Create a copy of NameDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameDtoCopyWith<_NameDto> get copyWith => __$NameDtoCopyWithImpl<_NameDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameDto&&(identical(other.common, common) || other.common == common));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common);

@override
String toString() {
  return 'NameDto(common: $common)';
}


}

/// @nodoc
abstract mixin class _$NameDtoCopyWith<$Res> implements $NameDtoCopyWith<$Res> {
  factory _$NameDtoCopyWith(_NameDto value, $Res Function(_NameDto) _then) = __$NameDtoCopyWithImpl;
@override @useResult
$Res call({
 String common
});




}
/// @nodoc
class __$NameDtoCopyWithImpl<$Res>
    implements _$NameDtoCopyWith<$Res> {
  __$NameDtoCopyWithImpl(this._self, this._then);

  final _NameDto _self;
  final $Res Function(_NameDto) _then;

/// Create a copy of NameDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? common = null,}) {
  return _then(_NameDto(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FlagsDto {

 String get png; String? get svg;
/// Create a copy of FlagsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlagsDtoCopyWith<FlagsDto> get copyWith => _$FlagsDtoCopyWithImpl<FlagsDto>(this as FlagsDto, _$identity);

  /// Serializes this FlagsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlagsDto&&(identical(other.png, png) || other.png == png)&&(identical(other.svg, svg) || other.svg == svg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,png,svg);

@override
String toString() {
  return 'FlagsDto(png: $png, svg: $svg)';
}


}

/// @nodoc
abstract mixin class $FlagsDtoCopyWith<$Res>  {
  factory $FlagsDtoCopyWith(FlagsDto value, $Res Function(FlagsDto) _then) = _$FlagsDtoCopyWithImpl;
@useResult
$Res call({
 String png, String? svg
});




}
/// @nodoc
class _$FlagsDtoCopyWithImpl<$Res>
    implements $FlagsDtoCopyWith<$Res> {
  _$FlagsDtoCopyWithImpl(this._self, this._then);

  final FlagsDto _self;
  final $Res Function(FlagsDto) _then;

/// Create a copy of FlagsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? png = null,Object? svg = freezed,}) {
  return _then(_self.copyWith(
png: null == png ? _self.png : png // ignore: cast_nullable_to_non_nullable
as String,svg: freezed == svg ? _self.svg : svg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlagsDto].
extension FlagsDtoPatterns on FlagsDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlagsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlagsDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlagsDto value)  $default,){
final _that = this;
switch (_that) {
case _FlagsDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlagsDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlagsDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String png,  String? svg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlagsDto() when $default != null:
return $default(_that.png,_that.svg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String png,  String? svg)  $default,) {final _that = this;
switch (_that) {
case _FlagsDto():
return $default(_that.png,_that.svg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String png,  String? svg)?  $default,) {final _that = this;
switch (_that) {
case _FlagsDto() when $default != null:
return $default(_that.png,_that.svg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlagsDto implements FlagsDto {
  const _FlagsDto({required this.png, this.svg});
  factory _FlagsDto.fromJson(Map<String, dynamic> json) => _$FlagsDtoFromJson(json);

@override final  String png;
@override final  String? svg;

/// Create a copy of FlagsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlagsDtoCopyWith<_FlagsDto> get copyWith => __$FlagsDtoCopyWithImpl<_FlagsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlagsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlagsDto&&(identical(other.png, png) || other.png == png)&&(identical(other.svg, svg) || other.svg == svg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,png,svg);

@override
String toString() {
  return 'FlagsDto(png: $png, svg: $svg)';
}


}

/// @nodoc
abstract mixin class _$FlagsDtoCopyWith<$Res> implements $FlagsDtoCopyWith<$Res> {
  factory _$FlagsDtoCopyWith(_FlagsDto value, $Res Function(_FlagsDto) _then) = __$FlagsDtoCopyWithImpl;
@override @useResult
$Res call({
 String png, String? svg
});




}
/// @nodoc
class __$FlagsDtoCopyWithImpl<$Res>
    implements _$FlagsDtoCopyWith<$Res> {
  __$FlagsDtoCopyWithImpl(this._self, this._then);

  final _FlagsDto _self;
  final $Res Function(_FlagsDto) _then;

/// Create a copy of FlagsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? png = null,Object? svg = freezed,}) {
  return _then(_FlagsDto(
png: null == png ? _self.png : png // ignore: cast_nullable_to_non_nullable
as String,svg: freezed == svg ? _self.svg : svg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
