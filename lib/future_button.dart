import 'dart:async';

import 'package:flutter/material.dart';

class FutureButton extends StatefulWidget {
  final String text;
  final Color? primary;
  final double? width, height;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding, margin;
  final bool enabled;
  final Function()? onPressed;
  final Future<bool> Function()? onExecute;

  const FutureButton({
    Key? key,
    required this.text,
    this.primary,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.borderRadius,
    this.enabled = true,
    this.onPressed,
    this.onExecute,
  }) : super(key: key);

  @override
  State<FutureButton> createState() => _FutureButtonState();
}

class _FutureButtonState extends State<FutureButton> {
  late bool isLoaded = true;

  late Color primary = widget.primary ?? Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    final color = isLoaded ? Colors.white : Colors.black.withOpacity(0.4);
    final background = isLoaded ? primary : primary.withOpacity(0.1);

    return GestureDetector(
      onTap: (widget.onPressed != null || widget.onExecute != null) && isLoaded
          ? _onClick
          : null,
      child: Container(
        margin: widget.margin ?? const EdgeInsets.symmetric(vertical: 8),
        clipBehavior: Clip.antiAlias,
        width: widget.width,
        height: widget.height,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  void _onClick() async {
    loading;
    if (widget.onExecute != null) {
      await widget.onExecute?.call();
    } else {
      widget.onPressed?.call();
    }
    loaded;
  }

  get loading => setState(() => isLoaded = false);

  get loaded => setState(() => isLoaded = true);
}
