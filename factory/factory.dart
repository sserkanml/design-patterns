abstract class Furniture {
  void assemble();
  void paint();
}

class Chair implements Furniture {
  @override
  void assemble() {
    print("chair is assembling");
  }

  @override
  void paint() {
    print("chair is painting");
  }
}

class Sofa implements Furniture {
  @override
  void assemble() {
    print("sofa is assembling");
  }

  @override
  void paint() {
    print("sofa is painting");
  }
}

class Table implements Furniture {
  @override
  void assemble() {
    print("table is assembling");
  }

  @override
  void paint() {
    print("table is painting");
  }
}

class FurnitureFactory {
  Furniture? createFurniture(String type) {
    if (type == 'chair') {
      return Chair();
    } else if (type == 'table') {
      return Table();
    } else if (type == 'sofa') {
      return Sofa();
    } else {
      return null;
    }
  }
}
