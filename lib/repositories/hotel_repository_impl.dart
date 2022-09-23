import 'dart:async';

import 'package:easy_codebase/domain/models/hotel.dart';
import 'package:easy_codebase/domain/repository/hotels_repository.dart';
import 'package:faker/faker.dart';

class HotelRepositoryImpl implements HotelRepository {
  Future<List<Hotel>?> getCityByName(String cityName) async {
    final completer = Completer<List<Hotel>?>.sync();
    final cityGroups = ['yogyakarta', 'jakarta', 'bandung', 'surabaya'];
    final Map<String, List<Hotel>> dummiesData = {};
    for (final item in cityGroups) {
      dummiesData.putIfAbsent(
          item,
          () => List.generate(
              5,
              (index) => Hotel.fromFakeData(Faker(),
                  shortCityName: item.toUpperCase())));
    }
    completer.complete(dummiesData[cityName]);

    return completer.future;
  }

  @override
  Future<List<Hotel>?> getHotelByCity(String cityName) async {
    final resultResponse = await getCityByName(cityName);
    return resultResponse;
  }
}
