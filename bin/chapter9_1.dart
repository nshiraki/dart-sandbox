// 非同期処理
// async、await、then

main(List<String> arguments) {
  // 非同期の処理を生成
  var future = createFuture();

  // 非同期処理を実行
  future.then((value) => print("future= $value"));
  // 結果: future= 1234
}

// 数値を返却する非同期処理を生成
Future<int> createFuture() async {
  // 時間が掛かる処理

  // awaitで少し遅延を入れる
  final delay = Duration(milliseconds: 3000);
  await Future.delayed(delay);

  // 結果を返却
  return 1234;
}