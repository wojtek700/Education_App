import 'dart:convert';

import 'package:education_app/core/utils/typdefs.dart';
import 'package:education_app/src/auth/data/models/user_model.dart';
import 'package:education_app/src/auth/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tLocalUserModel = LocalUserModel.empty();
  test(
    'should be a subclass of [LocalUser] entity',
    () => expect(tLocalUserModel, isA<LocalUser>()),
  );

  final tMap = jsonDecode(fixture('user.json')) as DataMap;

  group('fromMap', () {
    test('shuold return a valid [LocalUserModel] from the map', () {});

    final result = LocalUserModel.fromMap(tMap);
    expect(result, equals(tLocalUserModel));
  });
}
