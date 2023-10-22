// Handler: İşleyici arayüzü
abstract class PermissionHandler {
  PermissionHandler? _nextHandler;

  void setNextHandler(PermissionHandler nextHandler) {
    _nextHandler = nextHandler;
  }

  void handleRequest(int level);
}

// Concrete Handler: Temel İşleyici
class BasePermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    print('Temel izin verildi.');
  }
}

// Concrete Handler: Yönetici İşleyici
class ManagerPermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    if (level <= 2) {
      print('Yönetici izin verildi.');
    } else {
      _nextHandler?.handleRequest(level);
    }
  }
}

// Concrete Handler: Admin İşleyici
class AdminPermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    if (level <= 5) {
      print('Admin izin verildi.');
    } else {
      print('Tüm yetkilendirmeler reddedildi.');
    }
  }
}
