import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'city_group_state.dart';

class CityGroupCubit extends Cubit<CityGroupState> {
  CityGroupCubit() : super(const CityGroupInitial());

  final _cityGroupDummy = ['Jakarta', 'Swiss', 'Bandung', 'Surabaya'];
  int _defaultSelectIndex = 0;

  factory CityGroupCubit.create(BuildContext context) =>
      CityGroupCubit()..getCity();

  String get getOfCity => _cityGroupDummy[_defaultSelectIndex];

  int get getIndexOfSelected => _defaultSelectIndex;

  void getCity() => emit(CityGroups(_cityGroupDummy, _defaultSelectIndex));

  void selectCity(int indexSelect) {
    _defaultSelectIndex = indexSelect;
    emit(CityGroups(_cityGroupDummy, _defaultSelectIndex));
  }
}
