class Character {
  late String name;
  late int speed;
  late int power;
  late List<String> abilities;
  Character();
  Character.clone(Character source) {
    this.name = source.name;
    this.speed = source.speed;
    this.power = source.power;
    this.abilities = List.from(source.abilities);
  }

  void displayInfo() {
    print("Name: $name, Speed: $speed, Power: $power");
    print("Abilities: ${abilities.join(", ")}");
  }
}
