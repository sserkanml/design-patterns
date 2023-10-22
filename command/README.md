# Command Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Behavioral-blue)

**Command Tasarım Deseni**, bir istemcinin isteğini bir nesneye (komuta) dönüştürerek bu isteğin parametrelendirilebilirliğini ve geri alınabilirliğini sağlar. Bu desen, bir komutun (command) bir nesne olarak ele alınmasını ve bu komutun uygulanmasının nasıl gerçekleştirileceğinin soyutlanmasını hedefler.

## Problem

Bir uygulamada, belirli işlemlerin gerçekleştirilmesi gerekebilir. Ancak, bu işlemlerin nasıl gerçekleştirileceği ve hangi nesneler üzerinde çalışacağı belirsiz olabilir.

## Çözüm

Command deseni, bir isteği (komutu) bir nesne olarak ele alır. Bu komut, bir alıcıya sahip olur ve bu alıcı üzerinde belirli bir işlemi gerçekleştirir.

## Avantajları

- İstemciden gelen isteği nesneye dönüştürür.
- Parametrelendirilebilir komutlar sağlar.
- Geri alınabilirlik (undo) sağlar.

## Kullanım

1. Command arayüzünü oluşturun ve bu arayüzde komutun yürütme metodu tanımlanır.
2. Concrete Command sınıflarını oluşturun ve belirli işlemleri temsil eden komutları tanımlayın.
3. Receiver sınıflarını oluşturun ve gerçek işi yapacak sınıfları temsil edin.
4. Invoker sınıfını oluşturun ve komutları yürütmek için gerekli olan nesneyi belirtin.

## Örnek Kullanım: Işık Kontrolü

```dart
// Command: Komut arayüzü
abstract class Command {
  void execute();
}

// Receiver: Işık
class Light {
  void turnOn() {
    print('Işık açıldı');
  }

  void turnOff() {
    print('Işık kapatıldı');
  }
}

// Concrete Command: Işık Açma Komutu
class TurnOnLightCommand extends Command {
  final Light _light;

  TurnOnLightCommand(this._light);

  @override
  void execute() {
    _light.turnOn();
  }
}

// Concrete Command: Işık Kapatma Komutu
class TurnOffLightCommand extends Command {
  final Light _light;

  TurnOffLightCommand(this._light);

  @override
  void execute() {
    _light.turnOff();
  }
}

// Invoker: Uygulama
class Switch {
  late Command _onCommand;
  late Command _offCommand;

  Switch(Command onCommand, Command offCommand) {
    _onCommand = onCommand;
    _offCommand = offCommand;
  }

  void turnOn() {
    _onCommand.execute();
  }

  void turnOff() {
    _offCommand.execute();
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Command Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Command_pattern#:~:text=In%20object%2Doriented%20programming%2C%20the,values%20for%20the%20method%20parameters.) sayfasını ziyaret edebilirsiniz.

