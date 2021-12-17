import 'package:release_app/model/country.dart';

import 'package:get/get.dart';
import 'package:release_app/services/country_service.dart';

class CountryController extends GetxController {
  final CountryService _countryService = Get.find();

  final _countries = <Country>[].obs;

  List<Country> get countries => _countries;

  @override
  onInit() {
    super.onInit();
    getAllCountries();
  }

  Future<void> getAllCountries() async {
    try {
      _countries.addAll(await _countryService.getCountries());
    } catch (e) {
      print(e);
      print("ha ocurrido un error al consultar los paises");
    }
  }
}
