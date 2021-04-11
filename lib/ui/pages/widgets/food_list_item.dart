part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;

  FoodListItem({@required this.food, @required this.itemWidth});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 9),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(spreadRadius: 3, blurRadius: 10, color: Colors.black38)],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(food.picturePath), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth -
              182, // - (60 + 12 + 110) widht pict, margin pict, ratingstars
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.name,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                  symbol: 'IDR ',
                  decimalDigits: 0,
                  locale: 'id-ID',
                ).format(food.price),
                style: greyFontStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        RatingStars(food.rate)
      ],
    );
  }
}
