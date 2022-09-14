import 'package:flutter/material.dart';

class ButtonAnimationImplicitPage extends StatefulWidget {
  const ButtonAnimationImplicitPage({super.key});

  @override
  State<ButtonAnimationImplicitPage> createState() =>
      _ButtonAnimationImplicitPageState();
}

enum GeoType { rectangle, circle }

class GeoState {
  final double width;
  final Alignment alignment;
  final ShapeBorder? shape;
  final GeoType type;

  GeoState({
    required this.width,
    required this.alignment,
    this.shape,
    required this.type,
  });

  factory GeoState.rectangle() {
    return GeoState(
      width: 100,
      alignment: Alignment.topCenter,
      shape: const RoundedRectangleBorder(),
      type: GeoType.rectangle,
    );
  }

  factory GeoState.circle() {
    return GeoState(
      width: 50,
      alignment: Alignment.bottomRight,
      type: GeoType.circle,
    );
  }
}

class _ButtonAnimationImplicitPageState
    extends State<ButtonAnimationImplicitPage> {
  late GeoState _state;

  @override
  void initState() {
    super.initState();

    _state = GeoState.circle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Floating Action Button Implícita'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: AnimatedAlign(
          duration: const Duration(seconds: 2),
          alignment: _state.alignment,
          curve: Curves.ease,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: _state.width,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _state = _state.type == GeoType.circle
                        ? GeoState.rectangle()
                        : GeoState.circle();
                  });
                },
                shape: _state.shape,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
