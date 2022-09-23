import 'package:easy_codebase/repositories/hotel_repository_impl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/hotel.dart';
import '../../domain/repository/hotels_repository.dart';

part 'coupon_hotels_state.dart';

class CouponHotelsCubit extends Cubit<CouponHotelsState> {
  CouponHotelsCubit(this.hotelRepositoryImpl)
      : super(const CouponHotelsInitial());

  final HotelRepository hotelRepositoryImpl;

  factory CouponHotelsCubit.create(BuildContext context) =>
      CouponHotelsCubit(context.read<HotelRepositoryImpl>());

  void getPromoHotels(String cityName) async {
    try {
      emit(const CouponLoadingState());
      final hotels = await hotelRepositoryImpl.getHotelByCity(cityName);
      if (hotels == null || hotels.isEmpty) {
        emit(const CouponEmptyState());
      } else {
        emit(CouponHotels(hotels));
      }
    } catch (e) {
      emit(const CouponErrorState('Oop Something wrong'));
    }
  }
}
