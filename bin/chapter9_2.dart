// 非同期処理
// thenのonErrorを利用した例外処理

main(List<String> arguments) {
  // 非同期の処理を生成
  var future = createFuture();

  // 非同期処理を実行
  future.then((value) => print("$value"), onError: (e) => print("onError= $e"));
}

// 例外を送出する非同期処理を生成
Future<int> createFuture() async {
  throw Exception("throw exception!");
}
