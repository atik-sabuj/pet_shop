class Category {
  String? name;
  String? image;

  Category({this.name, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Image'] = this.image;
    return data;
  }
}

final List<Category> categoryList = [
  Category(name: "Cat",image: "images/cat logo.png"),
  Category(name: "Dog",image: "images/dog logo.png"),
  Category(name: "Bird",image: "images/bird logo.png"),
  Category(name: "Rabbit",image: "images/rabbit.png"),
  Category(name: "Fish",image: "images/fish.png"),
  Category(name: "Duck",image: "images/duck.png"),
  Category(name: "Horse",image: "images/horse.png"),
  Category(name: "Others",image: "images/others.png"),

];