import 'package:flutter/material.dart';
import 'package:library_app/themes/colors.dart';

@immutable
class IconOf extends StatelessWidget {
  const IconOf(this.icon, {this.size, this.color, super.key});
  final IconData icon;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size ?? 20,
      color: color ?? AppColors.black,
    );
  }
}
