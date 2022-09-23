part of 'home_page.dart';

class _ChipMenu extends StatefulWidget {
  const _ChipMenu({Key? key}) : super(key: key);

  @override
  State<_ChipMenu> createState() => _ChipMenuState();
}

class _ChipMenuState extends State<_ChipMenu> {
  late final CityGroupCubit cityGroupCubit;
  late final CouponHotelsCubit couponHotelsCubit;

  @override
  void initState() {
    super.initState();
    cityGroupCubit = CityGroupCubit.create(context);
    couponHotelsCubit = CouponHotelsCubit.create(context);
  }

  @override
  void dispose() {
    cityGroupCubit.close();
    couponHotelsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Row(
            children: [
              Expanded(
                  child: Text('Check coupon in each hotel',
                      style: theme.textTheme.titleLarge)),
              const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorsApp.primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 59,
          width: double.infinity,
          child: BlocBuilder(
            bloc: cityGroupCubit,
            builder: (context, state) {
              if (state is CityGroupInitial) {
                return const SizedBox.shrink();
              } else if (state is CityGroups) {
                couponHotelsCubit
                    .getPromoHotels(cityGroupCubit.getOfCity.toLowerCase());
                return ListView.separated(
                  itemCount: state.cityGroups.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  separatorBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0)),
                  itemBuilder: (context, index) {
                    return ActionChip(
                      label: Text(state.cityGroups[index],
                          style: TextStyle(
                              color: state.indexOfSelected == index
                                  ? Colors.white
                                  : ColorsApp.primaryColor)),
                      backgroundColor: state.indexOfSelected == index
                          ? ColorsApp.primaryColor
                          : const Color(0xffF7FAFA),
                      onPressed: () => cityGroupCubit.selectCity(index),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: BlocBuilder(
            bloc: couponHotelsCubit,
            buildWhen: (previous, current) => current is! CouponErrorState,
            builder: (context, state) {
              if (state is CouponLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CouponEmptyState) {
                return const Center(child: Text('Empty'));
              } else if (state is CouponHotels) {
                return ListView.builder(
                  itemCount: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final objectDummy = Faker();
                    return _CardItem(
                      titleCard: objectDummy.address.city(),
                      imageUrl: objectDummy.image.image(),
                      price: objectDummy.date.dateTime().millisecond,
                      shortTitle: objectDummy.address.country(),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        )
      ],
    );
  }
}
