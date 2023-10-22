import 'flyweight.dart';

void main(List<String> args) {
  CharacterStyleFactory styleFactory = CharacterStyleFactory();

  CharacterStyle? style1 = styleFactory.getStyle('Arial', 12, 'Red');
  CharacterStyle? style2 = styleFactory.getStyle('Arial', 12, 'Red');
  CharacterStyle? style3 = styleFactory.getStyle('Times New Roman', 14, 'Blue');

  style1?.applyStyle('A'); // Character: A, Font: Arial, Size: 12, Color: Red
  style2?.applyStyle('B'); // Character: B, Font: Arial, Size: 12, Color: Red
  style3?.applyStyle(
      'C'); // Character: C, Font: Times New Roman, Size: 14, Color: Blue
}
