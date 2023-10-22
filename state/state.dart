abstract class State {
  void on(Light light);
  void off(Light light);
}

class Light {
  late State _state;

  Light(this._state);

  void setState(State state) {
    _state = state;
  }

  void printState() {
    print("current state is: ${this._state}");
  }

  void switchOn() {
    _state.on(this);
  }

  void switchOff() {
    _state.off(this);
  }
}

class LightOnState implements State {
  @override
  void on(Light light) {
    print("Zaten açık.");
  }

  @override
  void off(Light light) {
    print("Kapatılıyor.");
    light.setState(LightOffState());
  }

  @override
  String toString() {
    return "on";
  }
}

class LightOffState implements State {
  @override
  void on(Light light) {
    print("Açılıyor.");
    light.setState(LightOnState());
  }

  @override
  void off(Light light) {
    print("Zaten kapalı.");
  }

  @override
  String toString() {
    return "off";
  }
}
