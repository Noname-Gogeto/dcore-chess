import 'package:flutter/cupertino.dart';

class TextDefault extends StatelessWidget {
  final String text;
  final Color color;

  const TextDefault(this.text, {Key key, this.color = CupertinoColors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Jura',
        color: color,
      ),
    );
  }
}

class TextSmall extends StatelessWidget {
  final String text;

  const TextSmall(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 20));
  }
}

class TextRegular extends StatelessWidget {
  final String text;

  const TextRegular(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 24));
  }
}

class TextLarge extends StatelessWidget {
  final String text;

  const TextLarge(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 36));
  }
}
