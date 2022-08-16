import 'dart:async';

/// 非同期処理
///　async* と yield を利用したStreamの処理
main(List<String> arguments) async {
  // Streamを生成
  var stream = countStream(n: 10);

  // listenで値を受け取る
  stream.listen((result) {
    print('result= $result');
  });
  // ** 結果 **
  // result= 1
  // 1秒sleep
  // result= 2
  // 1秒sleep
  // result= 3
  // 1秒sleep
  // result= 4
  // 1秒sleep
  // result= 5
  // 1秒sleep
  // result= 6
  // 1秒sleep
  // result= 7
  // 1秒sleep
  // result= 8
  // 1秒sleep
  // result= 9
  // 1秒sleep
  // result= 10
  //
  // プロセスは終了コード 0 で終了しました
}

// 1秒おきにカウント値をn回返却するStream
// async 関数が Future を返すのに対して、 async* 関数は Stream を返す
Stream<int> countStream({required int n}) async* {
  for (int count = 1; count <= n; count++) {
    await Future.delayed(Duration(seconds: 1));
    yield count;
  }
}
