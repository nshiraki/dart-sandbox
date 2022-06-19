// 関数
// - void型の関数（引数なし）
// - return型の関数（引数なし）
// - void型の関数 名前付きパラメータ（初期値なし）
// - void型の関数 名前付きパラメータ（初期値あり）
void main(List<String> arguments) {
  // 関数の呼び出し

  // - void型の関数（引数なし）
  notParameterFunction();

  // - return型の関数（引数なし）
  String language = getLanguage();
  print('language= $language');

  // - void型の関数 名前付きパラメータ（初期値なし）
  // 引数で渡したあいさつを表示
  showGreeting(text: 'hello!!!!');

  // - void型の関数 名前付きパラメータ（初期値あり）
  // 引数を渡さずに初期値のあいさつを表示
  showGreetingOrDefault();
  // 引数を渡してあいさつを表示
  showGreetingOrDefault(text: 'hello!');
}

// 関数の定義

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
