// 단위 테스트 작성해보기

import 'package:class_my_todo_v1/models/dto/user_dto.dart';
import 'package:class_my_todo_v1/models/entity/user_entity.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('회원 관리 도메인 테스트', () {

    late UserRepository userRepository;

    setUp(() {
      userRepository = UserRepositoryImpl();
    });

    // 1
    test('사용자 로그인 테스트', () async {

      // given 주는 것
      UserDto userDto = UserDto(email: 'hong@example.com', password: 'hong1234');

      // when 언제 무엇을 테스트
      UserEntity userEntity = await userRepository.signIn(userDto);

      // then 기대값 확인
      expect(userEntity, isA<UserEntity>()); // isA - 데이터 타입이 UserEntity가 맞는지 확인
      expect(userEntity.username, '홍길동');
    });

    // 2
    test('사용자 회원 가입 테스트', () async {
      // given
      UserDto newUser = UserDto(email: 'test1@naver.com', password: '1234', username: 'userA');

      // when
      int result = await userRepository.signUp(newUser);

      // then
      expect(result, isA<int>()); // <-- 데이터 타입 확인 (int가 아니면 빨갛게 뜬다)
      expect(result, equals(1)); // 값 일치 여부 확인
    });

  });
}