part of 'home_page.dart';

class _HotelItems extends StatelessWidget {
  const _HotelItems({Key? key, required this.title, this.subtitle})
      : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(title, style: theme.textTheme.titleLarge),
            subtitle: subtitle != null
                ? Text(subtitle!, style: theme.textTheme.subtitle2)
                : const SizedBox.shrink(),
            trailing: const Icon(
              Icons.keyboard_arrow_right_outlined,
              color: ColorsApp.primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
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
          ),
        )
      ],
    );
  }
}
