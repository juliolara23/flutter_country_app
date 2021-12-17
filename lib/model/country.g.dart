// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      continent: json['continent'] as String,
      capital: json['capital'] as String,
      languages: json['languages'] as String,
      geonameId: json['geonameId'] as int,
      south: (json['south'] as num).toDouble(),
      isoAlpha3: json['isoAlpha3'] as String,
      north: (json['north'] as num).toDouble(),
      fipsCode: json['fipsCode'] as String,
      population: json['population'] as String,
      east: (json['east'] as num).toDouble(),
      isoNumeric: json['isoNumeric'] as String,
      areaInSqKm: json['areaInSqKm'] as String,
      countryCode: json['countryCode'] as String,
      west: (json['west'] as num).toDouble(),
      countryName: json['countryName'] as String,
      postalCodeFormat: json['postalCodeFormat'] as String,
      continentName: json['continentName'] as String,
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'continent': instance.continent,
      'capital': instance.capital,
      'languages': instance.languages,
      'geonameId': instance.geonameId,
      'south': instance.south,
      'isoAlpha3': instance.isoAlpha3,
      'north': instance.north,
      'fipsCode': instance.fipsCode,
      'population': instance.population,
      'east': instance.east,
      'isoNumeric': instance.isoNumeric,
      'areaInSqKm': instance.areaInSqKm,
      'countryCode': instance.countryCode,
      'west': instance.west,
      'countryName': instance.countryName,
      'postalCodeFormat': instance.postalCodeFormat,
      'continentName': instance.continentName,
      'currencyCode': instance.currencyCode,
    };
