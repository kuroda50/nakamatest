import 'package:flutter/material.dart';

// class Advertisement extends StatelessWidget {
//   const Advertisement({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class SimpleOverlayExample extends StatefulWidget {
  const SimpleOverlayExample({super.key});

  @override
  State<SimpleOverlayExample> createState() => _SimpleOverlayExampleState();
}

class _SimpleOverlayExampleState extends State<SimpleOverlayExample> {
  OverlayEntry? _overlayEntry;

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 100.0,
        left: 50.0,
        child: Material(
          elevation: 4.0,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.amber,
            child: const Text('Hello, Overlay!'),
          ),
        ),
      ),
    );
  }

  void _showOverlay() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!); // Overlayに挿入
  }

  void _removeOverlay() {
    _overlayEntry?.remove(); // Overlayから削除
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Overlay Example")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _showOverlay,
              child: const Text("Show Overlay"),
            ),
            ElevatedButton(
              onPressed: _removeOverlay,
              child: const Text("Hide Overlay"),
            ),
          ],
        ),
      ),
    );
  }
}
