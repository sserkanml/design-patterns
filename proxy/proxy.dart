// Gerçek dosya yöneticisi
class FileManager {
  void viewFile(String fileName) {
    print("Dosya görüntüleme işlemi: $fileName");
  }

  void editFile(String fileName) {
    print("Dosya düzenleme işlemi: $fileName");
  }

  void deleteFile(String fileName) {
    print("Dosya silme işlemi: $fileName");
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

  void deleteFile(String fileName) {
    if (_fileManager == null) {
      _fileManager = FileManager();
    }
    // Önce dosya adını kontrol et
    if (!fileName.startsWith("system_")) {
      _fileManager!.deleteFile(fileName);
    } else {
      print("Bu dosya silinemez.");
    }
  }
}
