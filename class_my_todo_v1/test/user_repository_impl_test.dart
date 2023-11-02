// 단위 테스트 작성해보기

import 'package:class_my_todo_v1/models/dto/user_dto.dart';
import 'package:class_my_todo_v1/models/entity/user_entity.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('회원 관리 도메인 테스트', () {

    test('사용자 로그인 테스트', () async {

      // given 주는 것
      UserRepository userRepository = UserRepositoryImpl();
      UserDto userDto = UserDto(email: 'hong@example.com', password: 'hong1234');

      // when 무엇을 테스트
      UserEntity userEntity = await userRepository.signIn(userDto);

      // then 기대값 확인
      expect(userEntity, isA<UserEntity>()); // isA - 데이터 타입이 UserEntity가 맞는지 확인
      expect(userEntity.username, '홍길동');

    });

  });

}