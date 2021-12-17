import 'package:release_app/model/country.dart';
import 'package:http/http.dart' as http;

class CountryService {
  static const PostUrl = "api.geonames.org";
  static const String path = "/countryInfoJSON";
  final queryParameters = {'username': 'jlara23'};
  Future<List<Country>> getCountries() async {
    Uri uri = Uri.http(PostUrl, path, queryParameters);
    http.Response res = await http.get(uri);

    if (res.statusCode == 200) {
      String body = res.body;
      body = body.substring(12, body.length - 1);
      List<Country> countries = countryFromJson(body);
      return countries;
    } else {
      throw "Ha ocurrido un error al consultar los paises";
    }
  }
}
