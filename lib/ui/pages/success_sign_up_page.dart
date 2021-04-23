part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrasionPage(
          title: 'Great!',
          subtitle:
              "Now you are getting closer to get high",
          picturePath: "assets/food_wishes.png",
          buttonTitle1: "Start Journey",
          buttonTap1: () {},
        ));
  }
}
