# Composite Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Structural-green)

**Composite Tasarım Deseni**, hiyerarşik nesne yapılarını oluşturmak ve bu yapıları tek bir nesne gibi işlemek için kullanılır. Bu desen, hem tekil nesneleri hem de kompozit nesneleri aynı arayüz üzerinden yönetmeyi sağlar.

## Problem

Bir uygulamada, bir nesnenin birden çok alt nesnesi olabilir. Hem tekil nesneler hem de bu nesnelerin grupları üzerinde aynı işlemleri yapmak istendiğinde ortaya çıkar.

## Çözüm

Composite deseni, hem tekil nesneleri hem de grupları temsil eden bir arayüz tanımlar. Bu sayede, her iki tür nesne de aynı şekilde işlenebilir.

## Avantajları

- Hiyerarşik yapıları yönetmek için uygundur.
- Tekil ve grup nesneleri bir arada kullanılabilir.

## Kullanım

1. Component (Bileşen) arayüzünü oluşturun ve bu arayüzde ortak davranışları tanımlayın.
2. Leaf (Yaprak) sınıflarını oluşturun ve tekil nesneleri temsil edin.
3. Composite (Kompozit) sınıflarını oluşturun ve grupları temsil edin. Bu sınıflar aynı zamanda Component arayüzünü uygularlar.

## Örnek Kullanım: Organizasyon Yapısı

```dart
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
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Composite Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Composite_pattern) sayfasını ziyaret edebilirsiniz.
