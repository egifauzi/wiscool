part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Transaction transaction;

  const FoodDetailsPage({this.onBackButtonPressed, this.transaction});
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.transaction.food.picturePath))),
          ))
        ],
      ),
    );
  }
}
