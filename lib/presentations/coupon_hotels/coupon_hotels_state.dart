part of 'coupon_hotels_cubit.dart';

abstract class CouponHotelsState extends Equatable {
  const CouponHotelsState();

  @override
  List<Object?> get props => [];
}

class CouponHotelsInitial extends CouponHotelsState {
  const CouponHotelsInitial();

  @override
  List<Object?> get props => [];
}

class CouponLoadingState extends CouponHotelsState {
  const CouponLoadingState();

  @override
  List<Object?> get props => [];
}

class CouponEmptyState extends CouponHotelsState {
  const CouponEmptyState();

  @override
  List<Object?> get props => [];
}

class CouponHotels extends CouponHotelsState {
  final List<Hotel> hotels;

  const CouponHotels(this.hotels);

  @override
  List<Object?> get props => [hotels];
}

class CouponErrorState extends CouponHotelsState {
  final String message;

  const CouponErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
