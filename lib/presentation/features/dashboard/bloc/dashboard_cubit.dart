import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/repositories/country_repository_interface.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final ICountryRepository _repository;

  DashboardCubit(this._repository) : super(const DashboardState.initial());

  Future<void> loadCountries() async {
    emit(const DashboardState.loading());
    try {
      final countries = await _repository.getCountries();
      emit(DashboardState.loaded(countries));
    } catch (e) {
      emit(DashboardState.error(e.toString()));
    }
  }
}
