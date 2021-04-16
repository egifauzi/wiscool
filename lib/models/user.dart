part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Elon Musk',
    address: 'jln. Silicon valley, seberang warkop Kasih AYAH',
    city: 'California',
    houseNumber: '420',
    phoneNumber: '+1866642069',
    email: 'Elon@boring.com',
    picturePath:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrTQ1_5HjuF9ISSEzzBIZhuh9GDQQOWJHZgA&usqp=CAU');
