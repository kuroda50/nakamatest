// Flutter imports:
import 'package:flutter/material.dart';
import 'package:nakamatest/components/components.dart';

class AdvertisementList extends StatelessWidget {
  const AdvertisementList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: HeaderWidget(),
        drawer: DrawerWidget(),
        body: Placeholder());
  }
}
