part of 'city_group_cubit.dart';

abstract class CityGroupState extends Equatable {
  const CityGroupState();

  @override
  List<Object?> get props => [];
}

class CityGroupInitial extends CityGroupState {
  const CityGroupInitial();

  @override
  List<Object?> get props => [];
}

class CityGroups extends CityGroupState {
  final List<String> cityGroups;
  final int indexOfSelected;

  const CityGroups(this.cityGroups, this.indexOfSelected);

  @override
  List<Object?> get props => [cityGroups, indexOfSelected];
}
