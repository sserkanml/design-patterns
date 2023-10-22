# Proxy Tasarım Deseni

Proxy tasarım deseni, bir nesnenin yerine geçerek, bu nesneye erişimi kontrol etme veya ek işlevsellik ekleme amacıyla kullanılır.

## Problem

Bir nesnenin davranışını kontrol etmek, sırasında ek işlemler yapmak veya erişimi sınırlamak istediğimiz durumlarda kullanılır.

## Çözüm

Proxy tasarım deseni, bu sorunu çözmek için kullanılır. Gerçek nesnenin işlemlerine erişimi sağlayarak bu işlemleri kontrol edebiliriz. Ayrıca, gerçek nesneye erişimden önce veya sonra ek işlemler yapabiliriz.

## Avantajları

- Gerçek nesnenin işlemlerine erişimi kontrol edebiliriz.
- Ek işlevsellik ekleyebiliriz.
- Gerçek nesneye erişmeden önce veya sonra ek işlemler yapabiliriz.

## Dezavantajları

- Ek bir sınıf eklenmesiyle kod karmaşıklaşabilir.

## Kullanım

1. Gerçek nesnenin işlemlerini gerçekleştiren bir sınıf oluşturun (`RealSubject`).
2. Bu sınıfın aynı arayüzü uygulayan bir proxy sınıfı oluşturun (`Proxy`).
3. Proxy sınıfında, gerçek nesnenin işlemlerine erişimi kontrol ederek gerekirse ek işlemler yapın.

## Örnek Kullanım

```dart
// Gerçek dosya yöneticisi
class FileManager {
  void viewFile(String fileName) {
    print("Dosya görüntüleme işlemi: $fileName");
  }

  void editFile(String fileName) {
    print("Dosya düzenleme işlemi: $fileName");
  }
}

// Proxy sınıfı, gerçek işlemi çağırmadan önce kontroller yapar.
class FileManagerProxy {
  FileManager? _fileManager;

  void viewFile(String fileName) {
    if (_fileManager == null) {
      _fileManager = FileManager();
    }
    _fileManager!.viewFile(fileName);
  }

  void editFile(String fileName) {
    if (_fileManager == null) {
      _fileManager = FileManager();
    }
    // Önce dosya adını kontrol et
    if (!fileName.startsWith("system_")) {
      _fileManager!.editFile(fileName);
    } else {
      print("Bu dosya düzenlenemez.");
    }
  }
}
```

## Uygulama Alanları

- **Uzak Erişim (Remote Proxy):** Bir nesne uzak bir sunucuda bulunuyorsa, proxy nesnesi bu uzak erişimi sağlayarak verilerin alınmasını kolaylaştırır.
- **Önbellekleme (Caching):** Proxy, gerçek nesnenin işlem süresini azaltmak için önbellekleme yapabilir. Örneğin, bir web sayfasının içeriği proxy tarafından saklanarak tekrar istenildiğinde hızlı bir şekilde sağlanabilir.
- **Erişimi Kontrol Etme:** Proxy, gerçek nesne üzerinde erişimi kontrol edebilir. Örneğin, belirli kullanıcıların belirli işlemleri yapmasını engellemek için bir proxy kullanılabilir.

## Daha Fazla Bilgi

Daha fazla bilgi için [Proxy Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Proxy_pattern) sayfasını ziyaret edebilirsiniz.
