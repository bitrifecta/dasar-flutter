const KEY_PIZZA_NAME = 'pizzaName';
const KEY_PIZZA_PRICE = 'price';
const KEY_PIZZA_DESC = 'description';
const KEY_PIZZA_IMG = 'imageUrl';
const KEY_PIZZA_ID = 'id';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  Pizza.fromJson(Map<String, dynamic> dataSource)
    : description = dataSource[KEY_PIZZA_DESC] ?? "",
      price = dataSource[KEY_PIZZA_PRICE] ?? 0,
      imageUrl = dataSource[KEY_PIZZA_IMG] ?? "",
      pizzaName = dataSource[KEY_PIZZA_NAME] ?? "",
      id = dataSource[KEY_PIZZA_ID] ?? 0;
}
