import '../entities/country.dart';

abstract class ICountryRepository {
  Future<List<Country>> getCountries();
}
