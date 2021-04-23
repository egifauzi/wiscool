part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrasionPage(
          title: 'WOW!',
          subtitle: "isnt good enough, rights? I swear to God,\n buy more for better financial Bro",
          picturePath: "assets/bike.png",
          buttonTitle1: "Order Mores",
          buttonTap1: () {},
          buttonTitle2: "View My order",
          buttonTap2: () {}),
    );
  }
}
