# Durum Tasarım Deseni

Durum tasarım deseni, bir nesnenin farklı durumlarını temsil etmek ve bu durumlar arasında geçiş yapmak için kullanılan bir yaratımsal tasarım desenidir. Bu desen, bir nesnenin mevcut durumuna bağlı olarak farklı davranışlar sergilemesini sağlar.

## Nasıl Çalışır?

- **Context (Bağlam)**: Durumların yönetildiği ana nesnedir. Bu nesne, durumları içerir ve mevcut durumu temsil eder. Durum değişikliklerini bu nesne üzerinden yapar.

- **State (Durum)**: Farklı durumları temsil eden arayüzdür. Her bir durum, Context nesnesi üzerinde gerçekleştirilen işlemlere tepki verir.

- **Concrete States (Somut Durumlar)**: Farklı durumları temsil eden sınıflardır. Her bir sınıf, State arayüzünü uygular ve duruma özgü işlemleri gerçekleştirir.

## Kullanım Örneği

```dart
class Light {
  State _state;

  void setState(State state) {
    _state = state;
  }

  void switchOn() {
    _state.on(this);
  }

  void switchOff() {
    _state.off(this);
  }
}

abstract class State {
  void on(Light light);
  void off(Light light);
}

class OnState implements State {
  @override
  void on(Light light) {
    print("Zaten açık.");
  }

  @override
  void off(Light light) {
    print("Kapatılıyor.");
    light.setState(OffState());
  }
}

class OffState implements State {
  @override
  void on(Light light) {
    print("Açılıyor.");
    light.setState(OnState());
  }

  @override
  void off(Light light) {
    print("Zaten kapalı.");
  }
}

void main() {
  Light light = Light();

  light.setState(OffState());

  light.switchOn();  // Output: Açılıyor.
  light.switchOn();  // Output: Zaten açık.

  light.switchOff(); // Output: Kapatılıyor.
  light.switchOff(); // Output: Zaten kapalı.
}
```
## Avantajları

- Nesne davranışlarını duruma göre değiştirebilir.
- Durum geçişleri açıkça tanımlanır.

## Dezavantajları

- Durumların sayısı arttıkça sınıflar arası ilişkiler karmaşıklaşabilir.

## Uygulama

Bu tasarım desenini kullanmak için, süper sınıfı oluşturmanız, bu sınıfı uygulayan somut sınıflar oluşturmanız ve bir fabrika sınıfı oluşturmanız gerekecektir. Fabrika sınıfı, hangi türde nesnelerin oluşturulacağına karar verir ve ilgili nesneyi döndürür.

## Daha Fazla Bilgi

Daha fazla bilgi için [State Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/State_pattern) sayfasını ziyaret edebilirsiniz.
