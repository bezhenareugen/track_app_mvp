import 'package:flutter/cupertino.dart';

class Status {
  const Status(this.name, this.icon, this.textColor, this.isOnline);

  final String name;
  final Icon icon;
  final Color textColor;
  final bool isOnline;
}
