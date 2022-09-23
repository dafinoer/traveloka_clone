import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';

class Hotel extends Equatable {
  final String nameHotel;
  final String imageUrlPathHotel;
  final int pricePerNight;
  final String? address;
  final String? shortCityName;

  const Hotel({
    required this.nameHotel,
    required this.imageUrlPathHotel,
    this.pricePerNight = 0,
    this.address,
    this.shortCityName,
  });

  @override
  List<Object?> get props => [
        nameHotel,
        imageUrlPathHotel,
        pricePerNight,
        address,
        shortCityName,
      ];

  factory Hotel.fromFakeData(Faker fakeData, {String? shortCityName}) => Hotel(
      nameHotel: fakeData.person.name(),
      imageUrlPathHotel: fakeData.image.image(),
      pricePerNight: fakeData.date.dateTime().millisecond,
      shortCityName: shortCityName);
}
