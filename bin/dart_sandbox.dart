import "Dart:io";

/// Dart Sandbox

// main関数
// print関数
// 変数、for文（必要なものだけ）
// 定数
// 関数
// アロー関数
// コールバック関数/無名関数

void main(List<String> arguments) {
  // print関数
  print("** Dart Sandbox **");

  // 標準出力
  // 標準出力利用する場合は「import "Dart:io";」をimportしておく
  // 標準出力（改行なし）
  stdout.write("hello!!");
  // 標準出力（改行あり）
  stdout.writeln("hello!!");

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

  // 定数(final/const)
  // final：コンパイル後に処理が実行される（定数の値に変数の代入が可能）
  // const：コンパイル時に処理が実行される（変数を代入するとエラーが発生する）

  // final修飾子で宣言
  final fixed1 = "fixed1";

  // const修飾子で宣言
  const fixed2 = "fixed2";
  // constだけでいいような気がする・・・

  // 関数
  function();

  // アロー関数
  arrowFunction();

  // コールバック関数/無名関数
  callbackFunction();
}

//////////////////////////////////
// 関数
// ここの中でいろいろ関数を試す
void function() {
  // void型の関数（引数なし）
  notParameterFunction();

  // return型の関数（引数なし）
  String language = getLanguage();
  print('language= $language');

  // void型の関数 名前付きパラメータ（初期値なし）
  // 引数で渡したあいさつを表示
  showGreeting(text: 'hello!!!!');

  // void型の関数 名前付きパラメータ（初期値あり）
  // 引数を渡さずに初期値のあいさつを表示
  showGreetingOrDefault();
  // 引数を渡してあいさつを表示
  showGreetingOrDefault(text: 'hello!');
}

//////////////////////////////////
// 関数の定義とか

// void 引数なし
void notParameterFunction() {
  print("notParameterFunction");
}

// return型の関数（引数なし）
String getLanguage() {
  return 'Dart';
}

// 引数で渡した文言であいさつを表示（初期値なし）
void showGreeting({String? text}) {
  print("showGreeting: $text");
}

// 引数で渡したあいさつを表示（初期値あり）
// 初期値の文言をダブルクォートにするとクラッシュするので注意
void showGreetingOrDefault({String? text = 'Default Greeting!!!'}) {
  print("showGreetingOrDefault: $text");
}

//////////////////////////////////
// アロー関数
void arrowFunction() {
  // 合計した数値を取得
  int total = add(num1: 2, num2: 3);
  // 合計を表示
  showIntValue(value: total);
}

// 引数のnum1とnum2を足した数値を返却
int add({int num1 = 0, int num2 = 0}) => num1 + num2;

// 引数で渡された数値を表示
void showIntValue({int value = 0}) => print('showIntValue: value= $value');

//////////////////////////////////
// コールバック関数/無名関数

void callbackFunction() {
  // コールバック引数なし(処理が一つ以上)
  final callbackNotArgs1 = () {
      stdout.writeln("callbackNotArgs1 invoked");
  };
  // コールバック引数なし(処理が一つのみ)
  final callbackNotArgs2 = () => stdout.writeln("callbackNotArgs2 invoked");


  // コールバックの実行(引数なし)
  callbackNotArgs1();
  callbackNotArgs2.call();

  // コールバック引数あり(処理が一つ以上)
  // コールバック引数なし(処理が一つ以上)
  final callbackWithArgs1 = (int a, int b) {
    stdout.writeln("callbackWithArgs1: a=$a, b=$b");
  };
  // コールバック引数なし(処理が一つのみ)
  final callbackWithArgs2 = (int a, int b) => stdout.writeln("callbackWithArgs1: a=$a, b=$b");

  // コールバックの実行(引数あり)
  callbackWithArgs1(2,3);
  callbackWithArgs2.call(3,4);
}
