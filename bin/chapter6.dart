import "Dart:io";

// コールバック関数と無名関数
// - コールバック引数なし(処理が一つ以上)
// - コールバック引数なし(処理が一つのみ)
// - コールバック引数あり(処理が一つ以上)
// - コールバック引数あり(処理が一つ以上)
main(List<String> arguments) {
  // コールバック引数なし(処理が一つ以上)
  final callbackNotArgs1 = () {
    stdout.writeln("callbackNotArgs1 invoked");
  };
  // コールバックの実行
  callbackNotArgs1();

  // コールバック引数なし(処理が一つのみ)
  final callbackNotArgs2 = () => stdout.writeln("callbackNotArgs2 invoked");

  // コールバックの実行（callで呼び出し）
  callbackNotArgs2.call();

  // コールバック引数あり(処理が一つ以上)
  final callbackWithArgs1 = (int a, int b) {
    stdout.writeln("callbackWithArgs1: a=$a, b=$b");
  };
  callbackWithArgs1(2, 3);

  // コールバック引数あり(処理が一つのみ)
  final callbackWithArgs2 =
      (int a, int b) => stdout.writeln("callbackWithArgs1: a=$a, b=$b");

  // コールバックの実行（callで呼び出し）
  callbackWithArgs2.call(3, 4);
}
