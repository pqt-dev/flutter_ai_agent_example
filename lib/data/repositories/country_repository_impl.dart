import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/country.dart';
import '../../../domain/repositories/country_repository_interface.dart';
import '../models/country_dto.dart';

class CountryRepositoryImpl implements ICountryRepository {
  final DioClient _dioClient;

  CountryRepositoryImpl(this._dioClient);

  @override
  Future<List<Country>> getCountries() async {
    try {
      final response = await _dioClient.dio.get('all?fields=name,flags,capital,population,cca2');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) {
          final dto = CountryDto.fromJson(json);
          return dto.toDomain();
        }).toList();
      } else {
        throw Exception('Failed to fetch countries');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Error parsing data: $e');
    }
  }
}
