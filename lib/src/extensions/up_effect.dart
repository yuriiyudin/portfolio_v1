import 'package:flutter/material.dart';

extension UpEffect on Widget {
  Widget upEffect() {
    return UpEffectWidget(
      child: this,
    );
  }
}

class UpEffectWidget extends StatefulWidget {
  const UpEffectWidget({super.key, required this.child});

  @override
  State<UpEffectWidget> createState() => _MyWidgetState();
  final Widget child;
}

class _MyWidgetState extends State<UpEffectWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: isHover ? (Matrix4.identity()..translate(0, 0, 0)) : (Matrix4.identity()..translate(0, 5, 0)),
          child: widget.child),
      onHover: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
    );
  }
}
