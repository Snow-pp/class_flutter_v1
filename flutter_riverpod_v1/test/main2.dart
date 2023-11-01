
// 깊은 복사 (Deep Copy)
// 깊은 복사는 완전한 복사본을 만드는 방법이다.
// 변경 사항에만 영향을 미친다.

// 깊은 복사 예제
void main() {
  List<int> originList = [1, 2, 3];
  List<int> deepCopy = List.from(originList); // 깊은 복사가 된다

  // 변경사항이 깊은 복사에 영향을 미치지 않는다.
  deepCopy[0] = 10;

  print(originList);
  print(deepCopy);
}