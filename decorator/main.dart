import 'decorator.dart';

void main(List<String> args) {
  Cake cake = SimpleCake();
  print("Pasta: ${cake.getDescription()}, Fiyat: ${cake.cost()} TL");

  Cake chocolateCake = ChocolateCoating(SimpleCake());
  print(
      "Pasta: ${chocolateCake.getDescription()}, Fiyat: ${chocolateCake.cost()} TL");
}
