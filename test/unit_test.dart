import 'package:belief/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('dummy', () {
    var ans = dummy_func(2);
    expect(ans, 3);
  });

  test('dummy 2', () {
    var ans = dummy_func(2);
    ans = dummy_func(ans);
    expect(ans, 4);
  });
}
