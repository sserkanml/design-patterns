import 'proxy.dart';

void main(List<String> args) {
  FileManagerProxy fileManagerProxy = FileManagerProxy();

  fileManagerProxy.viewFile("example.txt");
  fileManagerProxy.editFile("example.txt"); // İzin verilir
  fileManagerProxy.deleteFile("example.txt"); // İzin verilir

  fileManagerProxy.editFile("system_config.txt"); // İzin verilmez
  fileManagerProxy.deleteFile("system_config.txt"); // İzin verilmez
}
