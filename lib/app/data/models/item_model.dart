List<Map<String, dynamic>> item = [
  {
    'id': '1',
    'image': 'assets/images/image2.png',
    'name': 'Veggie tomato mix',
    'price': 1900,
    'category': 'Foods',
    'delivery_info':
        'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
    'return_policy':
        'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'
  },
  {
    'id': '2',
    'image': 'assets/images/image21.png',
    'name': 'Spicy fish sauce',
    'price': 2300,
    'category': 'Foods',
    'delivery_info':
        'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
    'return_policy':
        'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'
  },
  {
    'id': '3',
    'image': 'assets/images/image2.png',
    'name': 'tomato mix',
    'price': 1000,
    'category': 'Drinks',
    'delivery_info':
        'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
    'return_policy':
        'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'
  },
  {
    'id': '4',
    'image': 'assets/images/image21.png',
    'name': 'fish sauce',
    'price': 2000,
    'category': 'Drinks',
    'delivery_info':
        'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
    'return_policy':
        'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'
  },
];

class ItemMenu {
  String? id;
  String? image;
  String? name;
  int? price;
  String? category;
  String? deliveryInfo;
  String? returnPolicy;

  ItemMenu(
      {this.id,
      this.image,
      this.name,
      this.price,
      this.category,
      this.deliveryInfo,
      this.returnPolicy});

  factory ItemMenu.fromJson(Map<String, dynamic> json) {
    return ItemMenu(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      price: json['price'],
      category: json['category'],
      deliveryInfo: json['delivery_info'],
      returnPolicy: json['return_policy'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'price': price,
        'category': category,
        'delivery_info': deliveryInfo,
        'return_policy': returnPolicy
      };
}

List<ItemMenu> get itemMenuFoods => List<ItemMenu>.from(
      item
          .where((element) => element['category'] == 'Foods')
          .map((e) => ItemMenu.fromJson(e)),
    );

List<ItemMenu> get itemMenuDrinks => List<ItemMenu>.from(
      item
          .where((element) => element['category'] == 'Drinks')
          .map((e) => ItemMenu.fromJson(e)),
    );

List<ItemMenu> itemMenuById(id) => List<ItemMenu>.from(
      item
          .where((element) => element['id'] == id)
          .map((e) => ItemMenu.fromJson(e)),
    );

List<ItemMenu> itemMenuSearch(name) => List<ItemMenu>.from(item
    .where(
      (element) => element['name']
          .toString()
          .toLowerCase()
          .contains(name.toString().toLowerCase()),
    )
    .map(
      (e) => ItemMenu.fromJson(e),
    ));
