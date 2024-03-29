part of 'pages.dart';

class IllustrasionPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;

  IllustrasionPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTitle1,
      this.buttonTitle2,
      @required this.buttonTap1,
      this.buttonTap2});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 30),
          ),
          Text(subtitle,
              style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
              textAlign: TextAlign.center),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.only(top: 30, bottom: 12),
            child: TextButton(
                onPressed: buttonTap1,
                
                style: TextButton.styleFrom(
                  ///tidak perlu cek null atau tdk karena dipaksa
                  elevation: 0,
                  foregroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              child: Text(
                buttonTitle1,
                style: blackFontStyle3.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

// if(buttonTap2 == null)
//                SizedBox()
//               else Container(

          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: buttonTap2,
                    style: TextButton.styleFrom(
                    elevation: 0,
                    foregroundColor: '8D92A3'.toColor(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      buttonTitle2 ?? 'title',
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
