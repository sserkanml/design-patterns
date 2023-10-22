import 'prototype.dart';

void main(List<String> args) {
  Character baseCharacter = Character()
    ..name = "Basic Character"
    ..speed = 10
    ..power = 5
    ..abilities = ["Jump", "Attack"];

  Character character1 = Character.clone(baseCharacter)
    ..name = "Character 1"
    ..speed = 15;

  Character character2 = Character.clone(baseCharacter)
    ..name = "Character 2"
    ..power = 8
    ..abilities.add("Double Jump");

  baseCharacter.displayInfo();
  character1.displayInfo();
  character2.displayInfo();
}
