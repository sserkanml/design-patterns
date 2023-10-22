# Prototype Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Creational-brightgreen)

**Prototype Tasarım Deseni**, yeni nesneler oluşturmak için mevcut bir nesnenin klonunu kullanır. Bu desen, nesnelerin belirli bir yapıda oluşturulmasını sağlar ve bu yapıdaki nesneleri klonlayarak yeni nesneler oluşturur.

## Problem

Bir uygulamada, farklı nesnelerin belirli bir yapıda oluşturulması gerektiğinde ortaya çıkar. Bu nesneler aynı temel özelliklere sahip olmalı, ancak belirli özelliklerde farklılık gösterebilir.

## Çözüm

Prototype deseni, mevcut bir nesnenin klonunu oluşturarak yeni nesnelerin oluşturulmasını sağlar. Temel bir prototip nesne oluşturulur ve bu nesne klonlanarak yeni nesneler oluşturulur.

## Avantajları

- Nesnelerin oluşturulma sürecini hızlandırır.
- Nesnelerin temel yapısını korur.
- Farklı özelliklere sahip nesneler oluşturmayı kolaylaştırır.

## Kullanım

1. Bir nesnenin temel yapısını belirleyin ve bu nesneyi klonlamak için bir yöntem ekleyin.
2. Yeni nesneler oluşturmak için temel nesneyi klonlayarak özelliklerini değiştirin.

## Örnek Kullanım

```dart
class Character {
  String name;
  int health;
  List<String> abilities;

  Character.clone(Character source) {
    this.name = source.name;
    this.health = source.health;
    this.abilities = List.from(source.abilities);
  }

  void displayInfo() {
    print("Name: $name, Health: $health");
    print("Abilities: ${abilities.join(", ")}");
  }
}

void main() {
  Character baseCharacter = Character()
    ..name = "Basic Character"
    ..health = 100
    ..abilities = ["Attack", "Defend"];

  Character character1 = Character.clone(baseCharacter)
    ..name = "Character 1"
    ..health = 120;

  Character character2 = Character.clone(baseCharacter)
    ..name = "Character 2"
    ..abilities.add("Heal");

  baseCharacter.displayInfo();
  character1.displayInfo();
  character2.displayInfo();
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Prototype Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Prototype_pattern) sayfasını ziyaret edebilirsiniz.
