part of 'home_page.dart';

class _MainMenuHomeWidget extends StatelessWidget {
  const _MainMenuHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: ((size.width - 32) / 5) / ((size.height * 0.2) / 3),
        ),
        children: [
          CircleIcon(
            icon: Assets.icons.planeIcon.image(color: Colors.white),
            backgroundColor: ColorsApp.primaryColor,
            title: 'Flights',
          ),
          CircleIcon(
            icon: Assets.icons.buildingIcon.image(color: Colors.white),
            backgroundColor: const Color(0xFF235D9F),
            title: 'Hotels',
          ),
          CircleIcon(
            icon: Assets.icons.bankIcon.image(color: Colors.white),
            backgroundColor: const Color(0xFFFF6D6A),
            title: 'Xperiance',
          ),
          CircleIcon(
            icon: Assets.icons.hamburgerSodaIcon.image(color: Colors.white),
            backgroundColor: const Color(0xFFFCA000),
            title: 'Eats Delivery',
          ),
          CircleIcon(
            icon: Assets.icons.dollarIcon.image(color: Colors.white),
            backgroundColor: const Color(0xff4F6A89),
            title: 'Financial',
          ),
          CircleIcon(
            icon: Assets.icons.subwayIcon.image(color: Color(0xffF0B661)),
            title: 'Trains',
          ),
          CircleIcon(
            icon:
                Assets.icons.holidayIcon.image(color: const Color(0xff4F6A89)),
            title: 'Holiday Stays',
          ),
          const CircleIcon(
            icon: Icon(Icons.attractions_rounded, color: Color(0xFFFF6D6A)),
            title: 'Attractions',
          ),
          const CircleIcon(
            icon: Icon(Icons.shopping_bag_outlined, color: Color(0xFFE27077)),
            title: 'Mart',
          ),
          CircleIcon(
            icon:
                Assets.icons.receiptIcon.image(color: const Color(0xff4F6A89)),
            title: 'Bills & Top Up',
          ),
          CircleIcon(
            icon: Assets.icons.busAltIcon.image(color: Color(0xff98D39D)),
            title: 'Cars',
          ),
          CircleIcon(
            icon: Assets.icons.carAltIcon.image(color: Color(0xff5E949D)),
            title: 'Bus & Shuttle',
          ),
          const CircleIcon(
            icon: Icon(Icons.sports_esports_outlined, color: Color(0xff4F6A89)),
            title: 'Game Farm',
          ),
          CircleIcon(
            icon: Assets.icons.goldIcon.image(color: const Color(0xff4F6A89)),
            title: 'Gold',
          ),
          const CircleIcon(
            icon: Icon(Icons.health_and_safety_outlined,
                color: Color(0xff4F6A89)),
            title: 'Insurance',
          ),
        ],
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  const CircleIcon(
      {Key? key, required this.icon, this.backgroundColor, required this.title})
      : super(key: key);
  final Widget icon;
  final Color? backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor ?? const Color(0xffF6F8F8),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(title),
        )
      ],
    );
  }
}
