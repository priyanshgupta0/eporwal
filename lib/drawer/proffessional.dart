class City {
  String city = "";
  List<Occupation> occupation = [];
  City({required this.city,required this.occupation});
}

class Occupation {
  String occupationName = "";
  List<User> users = [];

  Occupation({required this.occupationName,required this.users});
}

class User {
  String name = "";

  User({required this.name});
}
