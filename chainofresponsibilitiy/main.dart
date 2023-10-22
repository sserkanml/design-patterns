import 'chain.dart';

void main(List<String> args) {
  PermissionHandler baseHandler = BasePermissionHandler();
  PermissionHandler managerHandler = ManagerPermissionHandler();
  PermissionHandler adminHandler = AdminPermissionHandler();

  baseHandler.setNextHandler(managerHandler);
  managerHandler.setNextHandler(adminHandler);

  baseHandler.handleRequest(1); // Temel izin verildi.
  baseHandler.handleRequest(3); // Yönetici izin verildi.
  baseHandler.handleRequest(6); // Tüm yetkilendirmeler reddedildi.
}
