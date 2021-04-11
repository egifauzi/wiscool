part of 'models.dart';

class Food {
  final id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=632&q=80",
      name: "Fried Pig Crispy",
      description:
          "Goreng Babi Selandia, Micin, Kecap bango Babi ini dibuat dari babi selandia pilihan dan dibuat dengan sepenuh hati",
      ingredients: "Babi Selandia, Micin, Kecap bango",
      price: 150000,
      rate: 2.3),
  Food(
      id: 2,
      picturePath:
          "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=653&q=80",
      name: "Seblak Glamour",
      description:
          "Goreng Babi ini dibuat dariBabi Selandia, Micin, Kecap bango babi selandia pilihan dan dibuat dengan sepenuh hati",
      ingredients: "Babi Selandia, Micin, Kecap bango",
      price: 150000,
      rate: 4.3),
  Food(
      id: 3,
      picturePath:
          "https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
      name: "Mie Ayam Escobar",
      description:
          "Goreng Babi ini Babi Selandia, Micin, Kecap bangodibuat dari babi selandia pilihan dan dibuat dengan sepenuh hati",
      ingredients: "Babi Selandia,Babi Selandia, Micin, Kecap bangoMicin, Kecap bango",
      price: 150000,
      rate: 1.6),
  Food(
      id: 4,
      picturePath:
          "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=687&q=80",
      name: "Kerang Bunda Hara",
      description:
          "Goreng t dari babi st dari babi selandia piliha elandia piliha Babi ini dibuat dari babi selandia pilihan dan dibuat dengan sepenuh hati",
      ingredients: "Babi Selandia, Micin, Kecap bango",
      price: 150000,
      rate: 4.3),
      Food(
      id: 5,
      picturePath:
          "https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=633&q=80",
      name: "Orak Arik by Chef Elon Musk",
      description:
          "Orak Arik ini dibuat dari babi selandia pilihan dan dibuat dengan sepenuh hati t dari babi selandia piliha t dari babi selandia piliha",
      ingredients: "Babi Selandia, Micin, Kecap bango",
      price: 150000,
      rate: 4.8)
];
