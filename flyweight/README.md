# Flyweight Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Structural-green)

**Flyweight Tasarım Deseni**, benzer nesneler arasındaki tekrarı azaltarak bellek kullanımını optimize etmeyi amaçlar. Bu desen, nesnelerin paylaşılmasını sağlar.

## Problem

Bir uygulamada, benzer nesnelerin çok sayıda örneği oluşturulduğunda ve bu nesnelerin durumu paylaşılabilirse, bellek tüketimi ve performans açısından daha etkili olabilir.

## Çözüm

Flyweight deseni, nesnelerin belirli özelliklerini (durumlarını) paylaşarak çok sayıda nesne oluşturulmasını önler. Bu sayede bellek kullanımı azalır.

## Avantajları

- Bellek tüketimini azaltır.
- Performansı artırır.

## Kullanım

1. Flyweight arayüzü oluşturun ve bu arayüzde paylaşılan davranışları tanımlayın.
2. Concrete Flyweight sınıfları oluşturun ve paylaşılan nesnelerin durumunu temsil edin.
3. Flyweight Factory sınıfı oluşturun ve paylaşılan nesneleri yönetin. Gerekirse nesneleri oluşturun.

## Örnek Kullanım: Metin Biçimlendirme

```dart
class CharacterStyle {
  final String _fontName;
  final int _fontSize;
  final String _color;

  CharacterStyle(this._fontName, this._fontSize, this._color);

  void applyStyle(String character) {
    print(
        'Character: $character, Font: $_fontName, Size: $_fontSize, Color: $_color');
  }
}

class CharacterStyleFactory {
  final Map<String, CharacterStyle> _styles = {};

  CharacterStyle? getStyle(String fontName, int fontSize, String color) {
    final key = '$fontName-$fontSize-$color';
    if (!_styles.containsKey(key)) {
      _styles[key] = CharacterStyle(fontName, fontSize, color);
    }
    return _styles[key];
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Flyweight Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Flyweight_pattern) sayfasını ziyaret edebilirsiniz.
