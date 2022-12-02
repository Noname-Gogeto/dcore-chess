import 'package:flutter/cupertino.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const RoundedIconButton(this.icon, {Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        color: const Color(0x20000000),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        onPressed: onPressed,
        child: Icon(icon, color: const Color(0xffffffff)),
      ),
    );
  }
}
