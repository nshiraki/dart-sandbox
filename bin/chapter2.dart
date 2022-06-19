import "Dart:io";

// 変数、for文（必要なものだけ）
void main(List<String> arguments) {
  // 変数
  // int型
  int a = 100;
  print("a= $a");

  // double型
  double b = 1.2;
  print("b= $b");

  // String型
  // シングルクォートが標準
  // Dartにおいての文字列操作は割愛する
  String str = 'apple!';
  print("str= $str");

  // boolean型
  bool flag = true;
  print("flag= $flag");

  // for文
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // List型
  // var 変数名 = [値1, 値2, 値3]; //同じ型の値
  var mixFruitList = ['apple', 'banana', 'grape'];

  // for...in文
  for (var fruit in mixFruitList) {
    print(fruit);
  }

  // Set型
  // var 変数名 = {値1, 値2, 値3}; //同じ型の値
  var mixFruitSet = {'apple', 'banana', 'grape'};
  for (var fruit in mixFruitSet) {
    print(fruit);
  }

  // Map型
  // var 変数名 = {キー1: 値1, キー2: 値2, キー3: 値3}
  var mixFruitMap = {'apple': 24, 'banana': 18, 'grape': 32};
  for (var fruit in mixFruitSet) {
    print(fruit);
  }
}
