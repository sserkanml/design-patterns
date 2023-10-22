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
