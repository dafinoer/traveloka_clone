part of 'home_page.dart';

class _CardItem extends StatelessWidget {
  const _CardItem(
      {Key? key,
      required this.titleCard,
      required this.price,
      required this.imageUrl,
      this.shortTitle})
      : super(key: key);
  final String titleCard;
  final int price;
  final String imageUrl;
  final String? shortTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(167, 250),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          topLeft: Radius.circular(12.0)),
                      child: Image.network(imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  if (shortTitle != null)
                    Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                ),
                                color: Color(0xff4F6A8A)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 6.0),
                                child: Text(
                                  shortTitle!,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))))
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(titleCard,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('RP $price',
                          style: const TextStyle(
                              color: Color(0xffEF8D67),
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
