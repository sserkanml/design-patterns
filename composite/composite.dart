// Component: Bileşen
abstract class OrganizationComponent {
  late String name;
  void displayInfo();
  OrganizationComponent(this.name);
}

// Leaf: Çalışan
class Employee extends OrganizationComponent {
  String position;
  String name;

  Employee(this.name, this.position) : super(name);

  @override
  void displayInfo() {
    print('Çalışan: $name, Pozisyon: $position');
  }
}

// Composite: Departman
class Department extends OrganizationComponent {
  String name;
  List<OrganizationComponent> components = [];

  Department(this.name) : super(name);

  void addComponent(OrganizationComponent component) {
    components.add(component);
  }

  void removeComponent(OrganizationComponent component) {
    components.remove(component);
  }

  @override
  void displayInfo() {
    print('Departman: $name');
    for (var component in components) {
      component.displayInfo();
    }
  }
}
