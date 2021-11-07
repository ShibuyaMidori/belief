import 'package:belief/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dummy 1', () {
    var ans1 = dummy_func(2);
    expect(ans1, 3);
  });

  test('dummy 2', () {
    var ans2 = dummy_func(2);
    ans2 = dummy_func(ans2);
    expect(ans2, 4);
  });
}
