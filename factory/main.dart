import 'factory.dart';

void main(List<String> args) {
  FurnitureFactory factory = FurnitureFactory();

  Furniture? sofa = factory.createFurniture("sofa");
  Furniture? table = factory.createFurniture("table");
  Furniture? chair = factory.createFurniture("chair");
  sofa?.assemble();
  sofa?.paint();
  table?.assemble();
  table?.paint();
  chair?.assemble();
  chair?.paint();
}
