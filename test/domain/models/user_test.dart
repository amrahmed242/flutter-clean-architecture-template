import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const user = User(id: '1', title: 'mr', firstName: 'Amr', lastName: 'Ahmed', picture: '');

  test('has value equality', () {
    expect(user, user.copyWith());
    expect(user.hashCode, user.copyWith().hashCode);
    expect(user == user.copyWith(firstName: 'x'), isFalse);
  });

  test('json round trip', () {
    expect(User.fromJson(user.toJson()), user);
  });
}
