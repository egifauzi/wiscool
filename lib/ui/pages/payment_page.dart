part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'Sehabis Pesan Terbitlah Bayar',
      onBackButtonpressesd: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          ////BAGIAN ATAS
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      transaction.food.picturePath),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin -
                                  60 -
                                  12 -
                                  78, // (margin 2) + 60 lebar gambar + 12 jarak gambar ke foodname + text item 78
                              child: Text(
                                transaction.food.name, // + "aa vv dfff dd"
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR',
                                decimalDigits: 0,
                              ).format(transaction.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '${transaction.quantity} item(s)', //transaction.quantity.toString() + ' item(s)',
                      style: greyFontStyle.copyWith(fontSize: 13),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Details Transactions',
                    style:
                        blackFontStyle3.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.food.name,
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR ')
                            .format(
                                transaction.quantity * transaction.food.price),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Driver',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR ')
                            .format(50000),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Tax 10%',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR ')
                            .format(transaction.food.price *
                                transaction.quantity *
                                0.1),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Total',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR ')
                            .format(
                          transaction.food.price * transaction.quantity +
                              0.1 +
                              50000,
                        ),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: '1ABC9C'.toColor()),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 31, bottom: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 31,
                          bottom: 8,
                        ),
                        child: Text('Deliver To :',
                            style: blackFontStyle3.copyWith(
                                fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              'Name',
                              style: greyFontStyle,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              transaction.user.name,
                              style: blackFontStyle3,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              'Phone Number',
                              style: greyFontStyle,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              transaction.user.phoneNumber.toString(),
                              style: blackFontStyle3,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              'Adress',
                              style: greyFontStyle,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              transaction.user.address,
                              style: blackFontStyle3,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              'House No',
                              style: greyFontStyle,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              transaction.user.houseNumber,
                              style: blackFontStyle3,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              'City',
                              style: greyFontStyle,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 -
                                defaultMargin -
                                5,
                            child: Text(
                              transaction.user.city,
                              style: blackFontStyle3,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    
                    width: 312,
                    height: 45,
                    child: RaisedButton(onPressed: () {},
                    color: mainColor,
                    elevation:  0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: Text('Checkout', style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),),),

                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
