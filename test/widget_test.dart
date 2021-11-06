import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:belief/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // アプリを起動
    await tester.pumpWidget(const MyApp());

    // 0が書かれているオブジェクトが存在することを確認する
    expect(find.text('0'), findsOneWidget);
    // 1が書かれているオブジェクトが存在しないことを確認する
    expect(find.text('1'), findsNothing);

    // 追加ボタンを2回タップ
    await tester.tap(find.byIcon(Icons.add));
    await tester.tap(find.byIcon(Icons.add));
    // タップした後画面を更新
    await tester.pump();

    // 0が書かれているオブジェクトが存在しないことを確認する
    expect(find.text('0'), findsNothing);
    // 2が書かれているオブジェクトが存在することを確認する
    expect(find.text('2'), findsOneWidget);
  });
}
