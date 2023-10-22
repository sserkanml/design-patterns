import './singleton.dart';

void main(List<String> args) {
  Singleton? xPerson = Singleton.getInstance();
  Singleton? yPerson = Singleton.getInstance();
  if (yPerson == xPerson) {
    print("both is same ");
  } else {
    print("both is not same ");
  }
}
