import "Dart:io";

// print関数/標準出力
void main(List<String> arguments) {
  // print関数
  print('hello!');

  // 標準出力
  // 標準出力利用する場合は「import "Dart:io";」をimportしておく
  // 標準出力（改行なし）
  stdout.write("hello!!");
  // 標準出力（改行あり）
  stdout.writeln("hello!!");
}
