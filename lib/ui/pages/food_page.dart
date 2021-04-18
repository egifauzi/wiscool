part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        ////HEADER
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,////MediaQuery.of(context).size.width, // lebar selebar-lebarnya container/parents
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        "let's get some food",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn2.boombastis.com/wp-content/uploads/2015/10/pablo-escobar-adalah-robin-hoodnya-orang-kolombia.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            /////LIST OF FOOD
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        children: mockFoods
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(
                                      left: (e == mockFoods.first)
                                          ? defaultMargin
                                          : 0,
                                      right: defaultMargin),
                                  child: FoodCard(e),
                                ))
                            .toList()),
                  )
                ],
              ),
            ) //mockFoods dari food.dart
          ],
        ),
        ////LIST OF TABS FOOD
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                titles: [
                  'Terbaru',
                  'حلال',
                  'Terdekat',
                  'Recommended',
                ],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Builder(builder: (_) {
                List<Food> foods = (selectedIndex == 0) //variable name (foods) bebas bcoz in Builder
                    ? mockFoods
                    : (selectedIndex == 1)
                        ? mockFoods
                        : (selectedIndex == 2)
                            ? []
                            : [];

                return Column(
                    children: foods
                        .map((e) =>
                            Padding(
                              padding: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 16),
                              child: FoodListItem(food: e, itemWidth: listItemWidth),
                            ))
                        .toList());
              }),
              
            ],
          ),
        ),
        SizedBox(
          height: 80,
        )
      ],
    );
  }
}
