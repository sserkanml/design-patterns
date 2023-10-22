import 'template.dart';

void main(List<String> args) {
  CoffeeMaker blackCoffee = BlackCoffeeMaker();
  blackCoffee.prepareRecipe();

  CoffeeMaker latteCoffee = LatteCoffeeMaker();
  latteCoffee.prepareRecipe();
}
