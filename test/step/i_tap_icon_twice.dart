import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapIconTwice(WidgetTester tester, IconData icon) async {
  await iTapIconTwice(tester, icon);
  await iTapIconTwice(tester, icon);
}
