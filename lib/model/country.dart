import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class Country {
  @JsonKey(name: 'continent')
  String continent;

  @JsonKey(name: 'capital')
  String capital;

  @JsonKey(name: 'languages')
  String languages;

  @JsonKey(name: 'geonameId')
  int geonameId;

  @JsonKey(name: 'south')
  double south;

  @JsonKey(name: 'isoAlpha3')
  String isoAlpha3;

  @JsonKey(name: 'north')
  double north;

  @JsonKey(name: 'fipsCode')
  String fipsCode;

  @JsonKey(name: 'population')
  String population;

  @JsonKey(name: 'east')
  double east;

  @JsonKey(name: 'isoNumeric')
  String isoNumeric;

  @JsonKey(name: 'areaInSqKm')
  String areaInSqKm;

  @JsonKey(name: 'countryCode')
  String countryCode;

  @JsonKey(name: 'west')
  double west;

  @JsonKey(name: 'countryName')
  String countryName;

  @JsonKey(name: 'postalCodeFormat')
  String postalCodeFormat;

  @JsonKey(name: 'continentName')
  String continentName;

  @JsonKey(name: 'currencyCode')
  String currencyCode;

  Country(
      {required this.continent,
      required this.capital,
      required this.languages,
      required this.geonameId,
      required this.south,
      required this.isoAlpha3,
      required this.north,
      required this.fipsCode,
      required this.population,
      required this.east,
      required this.isoNumeric,
      required this.areaInSqKm,
      required this.countryCode,
      required this.west,
      required this.countryName,
      required this.postalCodeFormat,
      required this.continentName,
      required this.currencyCode});

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
