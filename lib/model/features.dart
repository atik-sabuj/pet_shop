class Features {
  String? name;
  String? image;
  double? price;
  String? location;
  String? age;
  bool? isFavorite;

  Features({this.name, this.image,  this.price,  this.location,  this.age, this.isFavorite,});

  Features.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['Image'];
    price = json['price'];
    location = json['location'];
    age = json['age'];
    isFavorite = json['isFavorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Image'] = this.image;
    data['price'] = this.price;
    data['location'] = this.location;
    data['age'] = this.age;
    data['isFavorite'] = this.isFavorite;
    return data;
  }
}

final List<Features> featuresList = [
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Dog",image: "images/dog.png", price: 8000.0, location: "Mdpur", age: "3 years", isFavorite: false),
  Features(name: "Bird",image: "images/bird1.png", price: 3000.0, location: "Mdpur", age: "1 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: false),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mdpur", age: "2 years", isFavorite: true),
];

